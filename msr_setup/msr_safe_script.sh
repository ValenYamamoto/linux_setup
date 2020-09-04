USER=$1

ansible-playbook msr_safe_install.yml -e user=$USER
