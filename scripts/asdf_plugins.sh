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
)

for plugin in "${plugins[@]}"; do
    # "|| true ignores errors when installing pre-existing plugins
    asdf plugin-add "$plugin" || true
done

echo "Installation complete."
echo "Please restart terminal or source profile file"
