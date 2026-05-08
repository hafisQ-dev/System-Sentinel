#!/bin/bash

# GÖRECELİ YOL YERİNE TAM YOL (Sihirli dokunuş burası)
LOG_FILE="/home/hafisquliyev/projects/System-Sentinel/logs/system.log"

# source ../config/settings.conf
THRESHOLD_DISK=80

current_disk=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$current_disk" -gt "$THRESHOLD_DISK" ]; then
   echo "$(date '+%Y-%m-%d %H-%M-%S') - Kritik : Disk Doluluğu %$current_disk" >> "$LOG_FILE"
else
   echo "$(date '+%Y-%m-%d %H-%M-%S') - OK : Disk Doluluğu %$current_disk" >> "$LOG_FILE"
fi