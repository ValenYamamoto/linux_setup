# Valen Yamamoto's Linux Setup Repo
## Pre-reqs
- ansible, git installed
- user with passwordless sudo privileges

## How to run:
Run all as user with passwordless sudo privileges.

### General linux setup
General linux setup will install vim, tmux, gcc, and other important packages to start out with and setup Github keys.
```bash
cd general_setup
bash setup_script.sh [github email] [github username]
```
Need to put ~/.ssh/github/id_rsa.pub on github.com to finish github setup.

### MSR-safe setup
Installs LLNL/msr-safe and fixes permissions for a msr_user group, which user will be added to.
```bash
cd msr_setup
bash msr_safe_script.sh [user]
```
May need to logout and login for group to take and run script again.
