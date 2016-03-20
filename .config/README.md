# Fish Shell

## Installation

```sh
brew install fish
```

## Configuration

```sh
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
cp -r fish/ ~/.config/fish/
set -g -x PATH /user/local/bin $PATH
```
