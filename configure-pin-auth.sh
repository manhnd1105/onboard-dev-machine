#!/bin/bash

# sudo
apt install libpam-pwdfile whois
cp /etc/pam.d/gdm-password /etc/pam.d/gdm-password_ORIGINAL
echo "$(whoami):$(mkpasswd -5)" | tee /etc/custompinfile
chmod 400 /etc/custompinfile

echo "auth sufficient pam_pwdfile.so pwdfile=/etc/custompinfile" | tee /etc/pam.d/gdm-password
