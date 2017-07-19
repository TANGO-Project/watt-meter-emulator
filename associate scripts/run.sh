#!/bin/bash
if [ "$HOSTNAME" != ns54.bullx ]; then #prev setup nd4
    printf "Please run this script on ns54"
else
    java -Djava.library.path="." -classpath . -XX:MaxPermSize=128m -Xms512m -Xmx512m -jar power-emulator.jar > ./power-emulator-main.log 2>&1 &
fi