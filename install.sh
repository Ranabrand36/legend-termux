#!/data/data/com.termux/files/usr/bin/bash

clear

pkg update -y >/dev/null 2>&1
pkg install toilet figlet nano -y >/dev/null 2>&1

clear
echo -e "\e[1;32m"

toilet -f future "LEGEND"
toilet -f future "HASSAN"

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "        LEGEND TERMUX INSTALLER"
echo "          Created By: LEGEND HASSAN"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo

read -p "👤 Enter First Name : " FIRST
read -p "👤 Enter Last Name  : " LAST
read -p "📺 YouTube Username : " YOUTUBE
read -p "📢 Telegram Username: " TELEGRAM
read -p "💬 WhatsApp Channel : " WHATSAPP

echo
echo "[✓] Installing..."
sleep 1
echo "[✓] Creating Banner..."
sleep 1
echo "[✓] Saving Configuration..."
sleep 1

cat > ~/.bashrc << EOF
clear

echo -e "\e[1;32m"
toilet -f future "$FIRST"
toilet -f future "$LAST"

echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

echo "👑 OWNER    : $FIRST $LAST"
echo "💀 ACCESS   : USER"
echo "🟢 STATUS   : ONLINE"

if [ ! -z "$YOUTUBE" ]; then
    echo "📺 YOUTUBE  : $YOUTUBE"
fi

if [ ! -z "$TELEGRAM" ]; then
    echo "📢 TELEGRAM : $TELEGRAM"
fi

if [ ! -z "$WHATSAPP" ]; then
    echo "💬 WHATSAPP : $WHATSAPP"
fi

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

PS1='\[\e[1;32m\]┌──('"$FIRST"'㉿TERMUX)-[\w]\n└─\$ \[\e[0m\]'
EOF

echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ INSTALLATION COMPLETED"
echo "🔄 Restart Termux"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
