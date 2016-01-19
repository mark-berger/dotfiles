function o -d "Opens the current directory or location"
  if test (count $argv) -eq 0
    open .
  else
    open $argv
  end
end