#!/bin/bash
echo "Top 5 Memory-Hogging Processes:"
ps aux --sort=-%mem | awk 'NR<=6 {print $0}'