function extract -d "Extracts archived files and mounts disk images"
  if test -f $argv
    echo -s "Extracting: " (set_color --bold blue) $argv (set_color normal)
    switch $argv
      case *.tar.bz2
        tar -jxvf $argv
      case *.tar.gz
        tar -zxvf $argv
      case *.bz2
        bunzip2 $argv
      case *.dmg
        hdiutil mount $argv
      case *.gz
        gunzip $argv
      case *.tar
        tar -xvf $argv
      case *.tbz2
        tar -jxvf $argv
      case *.tgz
        tar -zxvf $argv
      case *.zip
        unzip $argv
      case *.ZIP
        unzip $argv
      case *.pax
        cat $argv | pax -r
      case *.pax.Z
        uncompress $argv --stdout | pax -r
      case *.Z
        uncompress $argv
      case '*'
        echo -s (set_color --bold red)"$argv extension not recognized, cannot extract." (set_color normal)
    end
  else
    echo "$argv is not a valid file"
  end
end
