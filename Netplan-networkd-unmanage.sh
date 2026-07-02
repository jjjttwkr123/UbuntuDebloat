#!/bin/bash
#
#For systemd-networkd use ONLY.
#Do NOT use on a NetworkManager system.
echo For systemd-networkd use ONLY (on Ubuntu Server Default Installation)
echo Press Enter to continue
read
sudo systemctl disable --now netplan-configure