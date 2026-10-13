# My Ansible Playbook

I use this playbook to install necessary packages and configure my machines. It works with Debian and Ubuntu on x86_64 and aarch64.

Packages installed:

- [zsh](https://www.zsh.org/) and [Oh My Zsh](https://ohmyz.sh/) (theme `blinks`)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- [Neovim](https://neovim.io/) from the upstream release
- [asdf](https://asdf-vm.com/) The Multiple Runtime Version Manager
- [Lazygit](https://github.com/jesseduffield/lazygit) Simple terminal UI for git commands
- [tldr](https://tldr.sh/) Simplified man pages
- [fzf](https://github.com/junegunn/fzf) A command-line fuzzy finder
- [bat](https://github.com/sharkdp/bat) A cat(1) clone with wings
- [ripgrep](https://github.com/BurntSushi/ripgrep) Recursively searches directories for a regex pattern
- [htop](https://htop.dev/) Interactive process viewer
- [Docker Engine](https://docs.docker.com/engine/) from the official Docker apt repository
- [magic-wormhole](https://github.com/magic-wormhole/magic-wormhole) Send files between computers

## Requirements

- Ansible 2.14 or newer
- A user with `sudo` access

## Usage

```bash
./playbook
```

Run only some parts with tags: `zsh`, `languages`, `tools`, `docker`, `editors`.

```bash
./playbook --tags tools
./playbook --skip-tags docker
```

The playbook is idempotent. Run it again at any time.

To upgrade asdf, Lazygit or Neovim, change the version variable in `playbook.yml`.

## Trying it in a Docker Container

```bash
# build the image and open a shell as the "dev" user
./build
# inside the container, run the playbook
./playbook
```
