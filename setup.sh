#!/bin/bash

function line_break () {
    word=$1
    total_length=100
    padding_length=$((($total_length - ${#word})/2))
    printf "%${padding_length}s" | tr ' ' '#'
    if [[ ${#word} -ne 0 ]]; then
        echo -n " $word "
    else
        echo -n "##"
    fi
    printf "%${padding_length}s" | tr ' ' '#'
    printf "\n"
}


line_break "Installing ansible via pip"
sudo python3 -m pip install ansible
line_break "Ansible Installed"

line_break "Installing ansible-galaxy roles"
ansible-galaxy install -r requirements.yml
line_break "Roles Installed"

sudo whoami > /dev/null

line_break "Running playbook"
ansible-playbook main.yml
line_break "Playbook complete!"