#!/usr/bin/bash

#Installing selenium in virtual environment via vscode

echo "Changing to home directory..."
pushd "$home/codeProj"

echo "Creating virtual environment..."
python3 -m venv .wsl2sel && source .wsl2sel/bin/activate

echo "installing Selenium..."
cd .wsl2sel && pip3 install -U selenium

echo "Creating selenium subdirectory..."
mkdir selenium && cd selenium

echo "Creating selenium python file..."
echo "# program summary - selenium will extract and print website description." >> run_selenium.py

echo "Initializing vscode workspace..."
code -a ../../.wsl2sel

popdls
