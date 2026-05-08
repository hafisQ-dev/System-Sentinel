#!/bin/bash

# Log dosyası tam yol 
LOG_FILE="/home/hafisquliyev/projects/System-Sentinel/logs/system.log"

# tam yol ile çağrılma.sebep: hata almama garantisi
source /home/hafisquliyev/projects/System-Sentinel/config/settings.conf

current_disk=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$current_disk" -gt "$THRESHOLD_DISK" ]; then
   
   MESSAGE="Kritik: Disk Dolulugu %$current_disk"
   echo "$MESSAGE" | mail -s "Sistem Sentinel Alarmi" "quliyev.hafis97@gmail.com"
   echo "$(date '+%Y-%m-%d %H-%M-%S') - Kritik : E-posta Gonderildi" >> "$LOG_FILE"
else
   
   echo "$(date '+%Y-%m-%d %H-%M-%S') - OK : Disk Dolulugu %$current_disk" >> "$LOG_FILE"
fi
