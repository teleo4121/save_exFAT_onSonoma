#!/bin/bash

IDENTIFIER_ID=$1
if [ -z "${IDENTIFIER_ID}" ]; then 
echo "Please put identifier ID after script."
fi 

device_name=`diskutil info ${IDENTIFIER_ID} |grep "Volume Name:" | awk -F ':' '{print $2}' | sed -e 's/^[ \t]*//'`

while [ ! -d "/Volumes/${device_name}" ]
do 
diskutil mountDisk ${IDENTIFIER_ID}
done

echo "Seems Sonoma accepted your external device finally. Please check your Volumns folder ( or your desktop.)"
