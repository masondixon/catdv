#!/bin/bash

rm -rf /tmp/patients/
rm -f /tmp/*matcher.log

mkdir -p /tmp/patients/gsmith
echo "im am gsmith xml file" >> /tmp/patients/gsmith/test.xml
echo "im am gsmith test.mp4 file" >> /tmp/patients/gsmith/test.mp4
echo "im am gsmith some_other.mp4 file" >> /tmp/patients/gsmith/some_other.mp4
echo "im am gsmith yet_another.mp4 file" >> /tmp/patients/gsmith/yet_another.mp4

mkdir -p /tmp/patients/kdixon
echo "im am kdixon xml file" >> /tmp/patients/kdixon/test.xml
echo "im am kdixon test.mp4 file" >> /tmp/patients/kdixon/test.mp4
echo "im am kdixon some_other.mp4 file" >> /tmp/patients/kdixon/some_other.mp4
echo "im am kdixon yet_another.mp4 file" >> /tmp/patients/kdixon/yet_another.mp4

mkdir -p /tmp/patients/gdixon
echo "im am gdixon xml file" >> /tmp/patients/gdixon/test.xml
echo "im am gdixon test.mp4 file" >> /tmp/patients/gdixon/test.mp4
echo "im am gdixon some_other.mp4 file" >> /tmp/patients/gdixon/some_other.mp4
echo "im am gidxon yet_another.mp4 file" >> /tmp/patients/gdixon/yet_another.mp4

mkdir -p /tmp/patients/mdiggler
echo "im an mp4 file" >> /tmp/patients/mdiggler/test.mp4
