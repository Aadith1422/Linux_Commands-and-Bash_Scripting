#!/bin/bash
LOGFILE="sys_monitor_$(date +%F).log"

echo "Logging at $(date)" >> $LOGFILE
echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }')" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE
echo "-------------------------" >> $LOGFILE