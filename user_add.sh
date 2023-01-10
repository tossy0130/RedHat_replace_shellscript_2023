#!/bin/bash

VAR1=$1
VAR2=$2

useradd -m -s /bin/bash "$VAR1"
echo "$VAR1:$VAR2" | chpasswd