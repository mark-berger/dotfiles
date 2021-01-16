function t -d "Opens a twitch.tv stream with streamlink"
  set -l quality

  if test (count $argv) -eq 2
    streamlink --twitch-disable-ads --twitch-disable-hosting --twitch-disable-reruns --twitch-low-latency http://www.twitch.tv/$argv[1] $argv[2]
  end
end
