Personal Kali Adaptation of [Ippsec's](https://github.com/IppSec/parrot-build/tree/master) Parrot OS Ansible Build

** Make sure to pip install ansible, apt has an older copy **

# Instructions
* Start with Kali
* Install Ansible (python3 -m pip install ansible)
* Clone and enter the repo (git clone)
* ansible-galaxy install -r requirements.yml
* Make sure we have a sudo token (sudo whoami)
* ansible-playbook main.yml