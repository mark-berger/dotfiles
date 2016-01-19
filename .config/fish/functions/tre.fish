function tre -d "Shorthand for `tree` piped into less"
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst $argv | less -FRNX;
end
