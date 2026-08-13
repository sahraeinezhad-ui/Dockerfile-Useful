#!/bin/bash
#local Variable
MYNAME="Ferat"

OUTPUT="/root/script1_${HOSTNAME}_`date +%Y%m%d.log`"
echo "Hello ${USER}" >> $OUTPUT

#This is a command
echo "This is First Script" >> $OUTPUT

echo "My Name is ${MYNAME}" >> $OUTPUT
