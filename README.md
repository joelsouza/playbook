# My Ansible Playbook

I use this playbook to install necessary packages and configure my servers. It's designed to work with Debian and Ubuntu servers.

Pacakges installed:

- zsh and oh-my-zsh
- neovim
- asdf

## Usage

```bash
$ ansible-playbook playbook.yml 
# run the playbook
```

## Test it with a Docker Container

```bash
$ ./build.sh 
# build docker image and run container

$ ./playbook.sh
# run the playbook
```
