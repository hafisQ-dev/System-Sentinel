System-Sentinel (Project 1)
Lightweight and Autonomous System Monitoring Tool

System-Sentinel is an automated monitoring solution designed for Linux-based systems. It continuously tracks disk usage and dispatches real-time email alerts to the administrator when critical capacity thresholds are reached.

Key Features
Real-Time Monitoring: Performs system health checks every minute via automated scheduling.

Smart Logging: Records all status updates with precise date/time stamps in system.log.

Email Alert System: Sends instant notifications using SMTP integration when thresholds (e.g., 80%) are exceeded.

Autonomous Operation: Fully integrated with Crontab, ensuring the system remains active even when the terminal is closed.

Technical Stack
Language: Bash Scripting

Automation: Linux Cron Jobs (Crond)

Protocol: SSMTP & SMTP (Secure Gmail API integration)

Data Processing: Advanced system data mining using df, awk, sed, and grep.

Project Structure
Plaintext
System-Sentinel/
├── config/    # Configuration files (Thresholds, Email settings, etc.)
├── scripts/   # Core monitoring logic (monitor.sh)
└── logs/      # Persistent system activity logs
Setup & Installation
Clone the Repository:

Bash
git clone https://github.com/hafisQ-dev/System-Sentinel.git
Configure Environment:
Update the values in config/settings.conf to set your desired disk threshold and recipient email.

Automate with Cron:
Add the script to your crontab (crontab -e):

Bash
    * * * * * /path/to/System-Sentinel/scripts/monitor.sh > /dev/null 2>&1
    ```

---
**Developed by:** [Hafis Quliyev]  
*Electrical Engineer & PhD Candidate*
---
