#!/bin/bash

BASEDIR=/home/ansible/ansible/05_epel
cd $BASEDIR

# 1) 없으면 ansible.cfg 파일 생성
cat << EOF > ansible.cfg
[defaults]
inventory = ./allhost
[privilege_escalation]
become = true
EOF

# 2) 없으면 inventory 파일 생성
cat << EOF > allhost
ansible1
ansible2
ansible3
ansible4
EOF

# 3) epel.yml 파일 실행
ansible-playbook epel.yml
