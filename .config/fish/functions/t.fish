function t -d "Opens a twitch.tv stream with streamlink"
  set -l quality

  if test (count $argv) -eq 2
    open "https://www.twitch.tv/$argv[1]/chat?popout="
    streamlink http://www.twitch.tv/$argv[1] $argv[2]
  end
end
