#!/bin/bash
# Setup script for Holberton Task 4 (Who are you?)
# Installs everything correctly in /tmp/ as required by the automated checker

# 1. Copy the script to /tmp/
cp "$(dirname "$0")/python-import_modules/4-hidden_discovery.py" /tmp/

# 2. Make the script executable
chmod u+x /tmp/4-hidden_discovery.py

# 3. Download the hidden module as required
cd /tmp/
curl -Lso "hidden_4.pyc" "https://github.com/hs-hq/0x02.py/raw/main/hidden_4.pyc"

echo "Task 4: Setup complete. You can now run the checker."
