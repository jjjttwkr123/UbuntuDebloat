#!/bin/bash
#
# install-software-properties.sh
# Choose and install software-properties-gtk OR software-properties-qt on Ubuntu
# AI generated content.
#

set -euo pipefail

# Ensure apt is available
if ! command -v apt-get &>/dev/null; then
    echo "Error: this script requires apt (Ubuntu/Debian)."
    exit 1
fi

echo "Which one do you want to install?"
echo "  1) software-properties-gtk  (GTK / GNOME)"
echo "  2) software-properties-qt   (Qt / KDE)"
read -rp "Enter 1 or 2: " choice

case "$choice" in
    1) PKG="software-properties-gtk" ;;
    2) PKG="software-properties-qt" ;;
    *) echo "Invalid choice."; exit 1 ;;
esac

echo
echo ">>> Installing: $PKG"
echo

sudo apt-get update
sudo apt-get install -y "$PKG"

echo
echo "Done: $PKG installed."
