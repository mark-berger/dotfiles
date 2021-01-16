# dotfiles

My collection of dotfiles, config settings, and other useful setup scripts.

## Installation

### MacOS

1. Install [Homebrew](https://brew.sh/) followed by packages with `brew bundle install`
2. Modify MacOS settings by running `./scripts/macos.sh`
3. Configure fish shell:
    ```sh
    echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
    chsh -s /usr/local/bin/fish
    cp -r fish/ ~/.config/fish/
    set --append --universal fish_user_paths /usr/local/bin
    ```
4. Install global npm packages with `sudo ./scripts/npmsh`

### Arch Linux

1. Install official packages with `sudo ./scripts/pacman.sh`
2. Install community packages with `sudo ./scripts/yay.sh`
3. Configure fish shell:
    ```sh
    echo "/usr/bin/fish" | sudo tee -a /etc/shells
    chsh -s /usr/bin/fish
    cp -r fish/ ~/.config/fish/
    set --append --universal fish_user_paths /usr/bin
    ```
4. Install global npm packages with `sudo ./scripts/npmsh`

## License

All content is released under the [MIT License](http://www.opensource.org/licenses/MIT).
