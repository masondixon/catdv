# catdv
Setting up your local environment - MACOS instructions only at this time

Install virtual box or another virtualization layer ( I'm currently running 5.2.24 but it shouldnt matter ).
Install vagrant ( I'm using version Vagrant 2.0.2 but again shouldnt matter )
Install ansible for ease for vm config automation, else manually setup your VM with the script and patient data.

Once you have cloned the repo, cd into the newly created directory, and issue the following commands: "vagrant up" 
This will pull down the centos image and a vm should be created and provisioned with ansible.  This will copy the 
file_matcher script over to the VM and create the dummy data/directories for us.

Once things have completed, you can ssh to the vm by issuing the following command: "vagrant ssh" then obtain root by 
running: "sudo su".  You can now run the command on the VM with "/usr/local/bin/file_matcher.py".  The command logs 
activity to /var/log/filematcher/ but you can also visually verify activity by ls -R on the AIDI directory.

If you make ANY changes locally to the file_matcher script or the seed_data.sh file, all you have to do is run:
"vagrant provision" and ansible will push the changes automatically to the VM.  

