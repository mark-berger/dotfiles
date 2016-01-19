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
    end
    livestreamer http://www.twitch.tv/$argv[1] $quality
  else
    livestreamer http://www.twitch.tv/$argv[1]
  end
end