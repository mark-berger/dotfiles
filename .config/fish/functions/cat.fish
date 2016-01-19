function cat -d "cat, with syntax highlighting"
  # Install Pygments, 'sudo easy_install Pygments'
  pygmentize -O style=monokai -f console256 -g $argv
end