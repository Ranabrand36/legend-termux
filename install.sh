#!/data/data/com.termux/files/usr/bin/bash

clear

echo "======================================"
echo "      LEGEND TERMUX INSTALLER"
echo "======================================"
echo

read -p "👤 Enter Your Name: " NAME
read -p "📺 Enter YouTube: " YOUTUBE
read -p "📢 Enter Telegram: " TELEGRAM
read -p "🌐 Enter GitHub: " GITHUB
read -p "💬 Enter WhatsApp Channel: " WHATSAPP

cat > ~/.bashrc << EOF
clear

echo "======================================"
echo "         WELCOME \$NAME"
echo "======================================"
echo "👤 OWNER    : \$NAME"
echo "📺 YouTube  : \$YOUTUBE"
echo "📢 Telegram : \$TELEGRAM"
echo "🌐 GitHub   : \$GITHUB"
echo "💬 WhatsApp : \$WHATSAPP"
echo "======================================"

PS1='┌──(\$NAME㉿TERMUX)-[\w]\n└─\$ '
EOF

echo
echo "✅ Installation Completed!"
echo "🔄 Restart Termux to see the changes."
