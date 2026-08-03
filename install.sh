#!/data/data/com.termux/files/usr/bin/bash

clear
echo "======================================"
echo "      LEGEND TERMUX INSTALLER"
echo "======================================"
echo

pkg update -y
pkg install figlet toilet nano -y

clear
echo "======================================"
echo "      USER INFORMATION"
echo "======================================"
echo

read -p "👤 Enter Your Name: " NAME
read -p "📺 YouTube Username: " YOUTUBE
read -p "💬 WhatsApp Number/Channel: " WHATSAPP
read -p "📢 Telegram Username: " TELEGRAM

echo
echo "Installing..."
sleep 1
echo "[✓] Saving Information..."
sleep 1
echo "[✓] Creating Banner..."
sleep 1
echo "[✓] Finalizing..."
sleep 1
cat > ~/.bashrc << EOF
clear
echo -e "\e[1;32m"

toilet -f future "\$NAME"
echo

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "👑 OWNER    : \$NAME"
echo "💀 ACCESS   : USER"
echo "🟢 STATUS   : ONLINE"
echo "▶ YOUTUBE   : \$YOUTUBE"
echo "💬 WHATSAPP : \$WHATSAPP"
echo "📢 TELEGRAM : \$TELEGRAM"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

PS1='\[\e[1;32m\]┌──('"$NAME"'㉿TERMUX)-[\w]\n└─\$ \[\e[0m\]'
EOF

echo
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Installation Completed!"
echo "🔄 Restart Termux"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
