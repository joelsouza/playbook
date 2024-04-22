# My Ansible Playbook

I use this playbook to install necessary packages and configure my servers. It's designed to work with Debian and Ubuntu instances.

Pacakges installed:

- [zsh](https://www.zsh.org/) and [oh-my-zsh](https://ohmyz.sh/)
- [Neovim](https://neovim.io/) and [NvChad](https://nvchad.com/)
- [asdf](https://asdf-vm.com/)
- [Lazygit](https://github.com/jesseduffield/lazygit)

## Usage

```bash
ansible-playbook playbook.yml
```

## Trying it in a Docker Container

```bash
# build and run the container
./build  
# run the playbook
./playbook
```
