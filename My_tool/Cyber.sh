#!/bin/bash
# Mini Cybersecurity Toolkit
# Author: Aadith
# Safe educational toolkit for practice

while true; do
    echo "----------------------------------"
    echo "  Mini Cybersecurity Toolkit"
    echo "----------------------------------"
    echo "1) Port Scanner"
    echo "2) SSH Weak Password Check (Simulated)"
    echo "3) System Info Gathering"
    echo "4) Top 5 Memory-Consuming Processes"
    echo "5) Exit"
    read -p "Choose an option [1-5]: " choice

    case $choice in
        1)
            read -p "Enter target IP/Domain: " target
            read -p "Enter start port: " start
            read -p "Enter end port: " end
            echo "Scanning $target from port $start to $end..."
            for ((port=$start; port<=$end; port++))
            do
                timeout 1 bash -c "echo > /dev/tcp/$target/$port" 2>/dev/null
                if [ $? -eq 0 ]; then
                    echo "Port $port is OPEN"
                else
                    echo "Port $port is CLOSED"
                fi
            done
            ;;
        2)
            read -p "Enter target IP (lab only!): " target
            read -p "Enter username: " user
            passwords=("123456" "password" "admin" "root" "toor")
            echo "Starting simulated SSH login attempts..."
            for pw in "${passwords[@]}"; do
                sshpass -p "$pw" ssh -o StrictHostKeyChecking=no -o ConnectTimeout=2 $user@$target "echo 'Login successful'" 2>/dev/null
                if [ $? -eq 0 ]; then
                    echo "[SUCCESS] Password found: $pw"
                    break
                else
                    echo "[FAILED] Tried password: $pw"
                fi
            done
            ;;
        3)
            echo "Gathering system info..."
            echo "Hostname: $(hostname)"
            echo "IP Address: $(hostname -I)"
            echo "OS Info: $(uname -a)"
            echo "CPU Info: $(lscpu | grep 'Model name')"
            echo "Memory Info: $(free -h | awk 'NR==2')"
            ;;
        4)
            echo "Top 5 memory-consuming processes:"
            ps aux --sort=-%mem | head -n 6
            ;;
        5)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option, try again."
            ;;
    esac
done
