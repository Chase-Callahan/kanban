#!/usr/bin/env bash
# in scripts/asdf_plugins.sh
# install necessary plugins

plugins=(
    "github-cli"
    "packer"
    "terraform"
    "awscli"
    "elixir"
    "erlang"
    "postgres"
    "jq"
    "age"
    "sops"
    "act"
)

for plugin in "${plugins[@]}"; do
    # "|| true ignores errors when installing pre-existing plugins
    asdf plugin-add "$plugin" || true
    asdf install "$plugin"
done

echo "Installation complete."
echo "Please restart terminal or source profile file"
