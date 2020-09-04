EMAIL=$1
USERNAME=$2


ansible-playbook ubuntu_setup.yml -e current_dir=$( pwd )
ansible-playbook git_setup.yml -e "current_dir=$( pwd ) github_email=$EMAIL username=$USERNAME"
