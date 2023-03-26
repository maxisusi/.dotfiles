#!/bin/bash
set -e

DOTFILES_DIR="$HOME/.dotfiles"
SSH_DIR="$HOME/.ssh"

# if ! [ -x "$(command -v curl)" ]; then
#   apt install curl -y
# fi

if ! [ -x "$(command -v ansible)" ]; then
  apt install ansible
fi

if ! [[ -f "$SSH_DIR/ansible" ]]; then
  mkdir -p "$SSH_DIR"

  chmod 700 "$SSH_DIR"

  ssh-keygen -b 4096 -t rsa -f "$SSH_DIR/ansible" -N "" -C "ansible"

  cat "$SSH_DIR/ansible.pub" >> "$SSH_DIR/authorized_keys"

  chmod 600 "$SSH_DIR/authorized_keys"
fi


if [[ -f "$DOTFILES_DIR/requirements.yml" ]]; then
  cd "$DOTFILES_DIR"

  ansible-galaxy install -r requirements.yml
fi

cd "$DOTFILES_DIR"

if [[ -f "$DOTFILES_DIR/vault-password.txt" ]]; then
  ansible-playbook --diff --vault-password-file "$DOTFILES_DIR/vault-password.txt" "$DOTFILES_DIR/main.yml"
else
  ansible-playbook --diff --extra-vars "@$DOTFILES_DIR/values.yml" "$DOTFILES_DIR/main.yml" "$@" --verbose
fi