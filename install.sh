#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

clear

echo -e "${RED}"
echo "  ██▓     ███████  ██████  ███████ ███    ██ ██████  "
echo "  ▓██▒    ██      ▒██    ▒ ██      ████   █ ██   ▒██ "
echo "  ▒██░    █████   ░ ▓██▄   █████   ██ ██  █ ██████░  "
echo "  ▒██░    ██        ▒   ██ ██      ██  ██ █ ██   ▒██ "
echo "  ░██████ ███████ ██████  ███████ ██   ███ ██████░   "
echo -e "${RESET}"

echo -e "${GREEN}════════════════════════════════════════${RESET}"
echo -e "${CYAN}   Legend Hassan Custom Tool Installer${RESET}"
echo -e "${GREEN}════════════════════════════════════════${RESET}"
echo ""

# Install packages
echo -e "${YELLOW}[*] Installing required packages...${RESET}"
pkg update -y
pkg install figlet toilet lolcat git -y

# Copy custom bashrc
echo -e "${YELLOW}[*] Setting up custom banner...${RESET}"
cp .bashrc_custom ~/.bashrc

# Add extra tools
echo -e "${YELLOW}[*] Installing extra tools...${RESET}"
pkg install cmatrix neofetch -y

echo ""
echo -e "${GREEN}[✓] Installation Complete!${RESET}"
echo -e "${CYAN}[!] Restart Termux to see changes${RESET}"
echo -e "${CYAN}[!] Type 'neofetch' for system info${RESET}"
echo -e "${CYAN}[!] Type 'cmatrix' for matrix effect${RESET}"
echo ""
echo -e "${GREEN}════════════════════════════════════════${RESET}"
echo -e "${RED}   Made with ❤️ by Legend Hassan${RESET}"
echo -e "${GREEN}════════════════════════════════════════${RESET}"
