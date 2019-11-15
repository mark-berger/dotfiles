################################################################################
# ALIASES
################################################################################

# Quicker navigation
alias .. "cd .."
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# Fix typos
alias cd.. "cd .."

# Create intermediate directories as required
alias mkdir "mkdir -p"

# Colourize the grep commands
alias grep 'grep --color=always'
alias egrep 'egrep --color=auto'
alias fgrep 'fgrep --color=auto'

# Additional shortcuts
alias la 'exa -abghl --time-style=long-iso --git'
alias lsh 'ls -ld .?*'

# Git aliases
alias gs 'git status'
alias ga 'git add '
alias gd 'git diff'
alias gdf 'git difftool'
alias gpl 'git pull'
alias gc 'git commit'
alias gcm 'git commit -m'
alias gps 'git push'
alias gls 'git log --stat'
alias gco 'git checkout'
alias gcob 'git checkout -b'
alias gsw 'git switch'
alias gswc 'git switch -c'

################################################################################
# COLOURS
################################################################################

# xterm-256color
# https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg

set fish_color_autosuggestion 808080             #244
set fish_color_command 5f87af                    #067
set fish_color_comment afffaf                    #157
set fish_color_cwd 5fd787                        #078
set fish_color_cwd_root ff5f5f                   #203
set fish_color_end bcbcbc                        #250
set fish_color_error ff5f5f                      #203
set fish_color_escape 9e9e9e                     #247
set fish_color_history_current 9e9e9e            #247
set fish_color_host --bold afafff                #147
set fish_color_match 5f87d7                      #068
set fish_color_normal ffffff                     #015
set fish_color_operator bcbcbc                   #250
set fish_color_param dfffaf                      #193
set fish_color_quote ffdf87                      #222
set fish_color_redirection dfffaf                #193
set fish_color_search_match --background=303030  #236
set fish_color_selection --background=303030     #236
set fish_color_status ff5f5f                     #203
set fish_color_user --bold 5fd787                #078
set fish_color_valid_path --underline

set fish_pager_color_completion eeeeee           #255
set fish_pager_color_description ffdf5f          #221
set fish_pager_color_prefix 9e9e9e               #247
set fish_pager_color_progress ffdf5f             #221
set fish_pager_color_secondary dadada            #253
