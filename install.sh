#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
RESET='\033[0m'

clear

echo -e "${RED}"
echo "  ██▓     ███████  ██████  ███████ ███    ██ ██████  "
echo "  ▓██▒    ██      ▒██    ▒ ██      ████   █ ██   ▒██ "
echo "  ▒██░    █████   ░ ▓██▄   █████   ██ ██  █ ██████░  "
echo "  ▒██░    ██        ▒   ██ ██      ██  ██ █ ██   ▒██ "
echo "  ░██████ ███████ ██████  ███████ ██   ███ ██████░   "
echo -e "${RESET}"

echo -e "${GREEN}════════════════════════════════════════════${RESET}"
echo -e "${CYAN}     Custom Termux Banner Installer${RESET}"
echo -e "${GREEN}════════════════════════════════════════════${RESET}"
echo ""

# 🔥 User Input
echo -e "${YELLOW}[?] Apna Naam Likhein:${RESET}"
read -p "➜ " USER_NAME

echo -e "${YELLOW}[?] Apna YouTube Channel Name Likhein:${RESET}"
read -p "➜ " CHANNEL_NAME

echo -e "${YELLOW}[?] Apna GitHub Username Likhein:${RESET}"
read -p "➜ " GITHUB_USER

echo -e "${YELLOW}[?] Koi Extra Message? (Jaise 'Hacking Is Life')${RESET}"
read -p "➜ " EXTRA_MSG

# Default values
[ -z "$USER_NAME" ] && USER_NAME="Hacker"
[ -z "$CHANNEL_NAME" ] && CHANNEL_NAME="YouTube"
[ -z "$GITHUB_USER" ] && GITHUB_USER="GitHub"
[ -z "$EXTRA_MSG" ] && EXTRA_MSG="Stay Anonymous"

# Install packages
echo ""
echo -e "${YELLOW}[*] Installing Required Packages...${RESET}"
pkg update -y
pkg install figlet toilet ruby -y
gem install lolcat

# Generate .bashrc
echo -e "${YELLOW}[*] Generating Custom Banner for $USER_NAME...${RESET}"

cat > ~/.bashrc << 'EOF'
#!/bin/bash

clear

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

echo -e "${RED}"
figlet -f big "USER_NAME_PLACEHOLDER" | lolcat
echo -e "${RESET}"

echo -e "${GREEN}"
figlet -f slant "USER_NAME_PLACEHOLDER" | lolcat
echo -e "${RESET}"

echo -e "${YELLOW}════════════════════════════════════════════${RESET}"
echo -e "${CYAN}   👤 User        : USER_NAME_PLACEHOLDER${RESET}"
echo -e "${CYAN}   📺 YouTube     : CHANNEL_NAME_PLACEHOLDER${RESET}"
echo -e "${CYAN}   🐙 GitHub      : GITHUB_USER_PLACEHOLDER${RESET}"
echo -e "${CYAN}   💬 Message     : EXTRA_MSG_PLACEHOLDER${RESET}"
echo -e "${CYAN}   📱 Device      : $(getprop ro.product.model 2>/dev/null || echo 'Termux')${RESET}"
echo -e "${CYAN}   🌐 IP          : $(curl -s ifconfig.me 2>/dev/null || echo 'Offline')${RESET}"
echo -e "${CYAN}   📅 Date        : $(date '+%A, %d %B %Y')${RESET}"
echo -e "${CYAN}   ⏰ Time        : $(date '+%I:%M %p')${RESET}"
echo -e "${YELLOW}════════════════════════════════════════════${RESET}"

echo -e "${GREEN}"
echo "  [●] System Ready..."
echo "  [●] Welcome USER_NAME_PLACEHOLDER!"
echo "  [●] Type 'help' for commands"
echo -e "${RESET}"

PS1='\[\e[0;32m\]┌──(\[\e[0;31m\]USER_NAME_PLACEHOLDER\[\e[0;32m\])-[\[\e[0;34m\]\W\[\e[0;32m\]]\n\[\e[0;32m\]└─#\[\e[0m\] '
EOF

# Replace placeholders
sed -i "s/USER_NAME_PLACEHOLDER/$USER_NAME/g" ~/.bashrc
sed -i "s/CHANNEL_NAME_PLACEHOLDER/$CHANNEL_NAME/g" ~/.bashrc
sed -i "s/GITHUB_USER_PLACEHOLDER/$GITHUB_USER/g" ~/.bashrc
sed -i "s/EXTRA_MSG_PLACEHOLDER/$EXTRA_MSG/g" ~/.bashrc

# Extra tools
echo -e "${YELLOW}[*] Installing Extra Tools...${RESET}"
pkg install cmatrix neofetch -y

echo ""
echo -e "${GREEN}════════════════════════════════════════════${RESET}"
echo -e "${GREEN}[✓] Installation Complete!${RESET}"
echo -e "${CYAN}[!] Restart Termux to see changes${RESET}"
echo -e "${CYAN}[!] Type 'neofetch' for system info${RESET}"
echo -e "${CYAN}[!] Type 'cmatrix' for matrix effect${RESET}"
echo ""
echo -e "${GREEN}════════════════════════════════════════════${RESET}"
echo -e "${PURPLE}   Made with ❤️ by Legend Hassan${RESET}"
echo -e "${GREEN}════════════════════════════════════════════${RESET}"
