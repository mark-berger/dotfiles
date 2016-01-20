function fs -d "Determine size of directory"
  du -sh * | sort -n
end
