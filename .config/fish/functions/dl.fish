function dl -d "Download a file from my remote server securely over ssh."
  rsync -chavzP -e ssh root@0.0.0.0:/var/lib/transmission-daemon/downloads/$argv ./
end
