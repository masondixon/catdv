#!/usr/bin/python

import sys,os,logging,time
from shutil import copyfile

video_file_extensions = ('.mp4')
xml_file_extensions = ('.xml')
log_file_path = '/var/log/filematcher/'
xml_files_created = {'count': 0, 'file_names': []}
errors = {'count': 0, 'error_details': []}

dev_mnt_point = "/tmp/patients"
production_mnt_point = "/mnt/IES_CAPTURE/AIDI"

def process_dirs(dir_path):
    
    logging.basicConfig(filename=log_file_path + time.strftime("%Y_%m_%d-%H_%M_%S") + "_matcher.log", 
                        format='%(asctime)s %(message)s', 
                        level=logging.DEBUG) 
    
    if os.path.isdir(dir_path):
        for directory in os.listdir(dir_path):
            process_dirs(os.path.join(os.path.abspath(dir_path),directory))
    else:
        if is_video_file(dir_path):
            if needs_xml_file(dir_path):
                clone_xml_file(dir_path)
        
def is_video_file(filepath):
    if filepath.lower().endswith(video_file_extensions):
        return True
    
def needs_xml_file(filepath):
    basename = os.path.basename(filepath).split(".")[0]
    if os.path.isfile(os.path.join(os.path.dirname(filepath), basename + ".xml")):
        return False
    elif os.path.isfile(os.path.join(os.path.dirname(filepath), basename + ".XML")):
        return False
    else:
        return True
    
def clone_xml_file(filepath):
    basename = os.path.basename(filepath).split(".")[0]
    for file in os.listdir(os.path.dirname(filepath)):
        if file.lower().endswith(xml_file_extensions):
            copyfile(os.path.join(os.path.dirname(filepath),file),os.path.join(os.path.dirname(filepath), basename + ".xml"))
            if os.path.isfile(os.path.join(os.path.dirname(filepath), basename + ".xml")):
                xml_files_created['count'] += 1
                xml_files_created['file_names'].append(os.path.join(os.path.dirname(filepath), basename + ".xml"))
                return
            else:
                errors['count'] += 1
                errors['error_details'].append("Failure: xml file creation failed for " + filepath + " using the file " + file + ". Trying next xml file in directory, if available...")
    
    errors['count'] += 1
    errors['error_details'].append("No xml file(s) found in " + os.path.dirname(filepath) + " that can be used for replication!")
 
def create_log_directory():
    if not os.path.exists(log_file_path):
        os.makedirs(log_file_path)
       
if __name__ == '__main__':
    try:
        create_log_directory()
        process_dirs(dev_mnt_point)
        
        logging.info("New xml file(s) count:" + str(xml_files_created['count']))
        for name in xml_files_created['file_names']:
            logging.info("New xml file created: " + name)
        
        logging.info("Error count:" + str(errors['count']))
        for error in errors['error_details']:
            logging.info("Error detail: " + error)
            
    except Exception as e:
        if hasattr(e, 'message'):
            logging.critical(e.message)
            sys.exit("Something bad happened!" + e.message)
            print(e.message)
        else:
            logging.critical(e)
            sys.exit("Something bad happened!" + e)
            print(e)