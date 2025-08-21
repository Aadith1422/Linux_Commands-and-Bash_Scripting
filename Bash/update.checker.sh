#!/bin/bash
echo "🔍 Checking for system updates..."
sudo apt update > updates.log
sudo apt list --upgradable >> updates.log
echo "✅ Update check complete. See updates.log"