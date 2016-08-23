function t -d "Opens a twitch.tv stream with livestreamer"
  set -l quality

  if test (count $argv) -eq 2
    switch $argv[2]
      case a audio
        set quality audio
      case mo mobile
        set quality mobile
      case l low
        set quality low
      case m medium
        set quality medium
      case h high
        set quality high
      case s source
        set quality source
      case 1080p60
        set quality 1080p60
      case 720p60
        set quality 720p60
      case 720p30
        set quality 720p30
    end
    livestreamer http://www.twitch.tv/$argv[1] $quality
  else
    livestreamer http://www.twitch.tv/$argv[1] $argv[2]
  end
end
