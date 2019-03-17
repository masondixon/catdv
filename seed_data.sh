#!/bin/bash

rm -rf /mnt/IES_CAPTURE/AIDI/patients/
rm -f /var/log/filematcher/*matcher.log

mkdir -p /mnt/IES_CAPTURE/AIDI/patients/gsmith
echo "im am gsmith xml file" >> /mnt/IES_CAPTURE/AIDI/patients/gsmith/test.xml
echo "im am gsmith test.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gsmith/test.mp4
echo "im am gsmith some_other.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gsmith/some_other.mp4
echo "im am gsmith yet_another.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gsmith/yet_another.mp4

mkdir -p /mnt/IES_CAPTURE/AIDI/patients/kdixon
echo "im am kdixon xml file" >> /mnt/IES_CAPTURE/AIDI/patients/kdixon/test.xml
echo "im am kdixon test.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/kdixon/test.mp4
echo "im am kdixon some_other.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/kdixon/some_other.mp4
echo "im am kdixon yet_another.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/kdixon/yet_another.mp4

mkdir -p /mnt/IES_CAPTURE/AIDI/patients/gdixon
echo "im am gdixon xml file" >> /mnt/IES_CAPTURE/AIDI/patients/gdixon/test.xml
echo "im am gdixon test.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gdixon/test.mp4
echo "im am gdixon some_other.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gdixon/some_other.mp4
echo "im am gidxon yet_another.mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/gdixon/yet_another.mp4

mkdir -p /mnt/IES_CAPTURE/AIDI/patients/mdiggler
echo "im an mp4 file" >> /mnt/IES_CAPTURE/AIDI/patients/mdiggler/test.mp4