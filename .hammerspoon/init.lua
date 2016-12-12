--- Initialization file for Hammerspoon.
-- @module init

require "caffeine"
require "windows"

local home = os.getenv("HOME")
local keys = {"ctrl", "alt", "cmd"}

--- Reloads Hammerspoon config.
-- Checks to see if any files end with the .lua extension and then reloads
-- Hammerspoon.
-- @param files A list of the files which have changed.
function reloadConfig(files)
  local doReload = false
  for _, file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end

-- Watch paths recursively for changes
w = hs.pathwatcher.new(home .. "/.hammerspoon/", reloadConfig):start()

-- Setup global keyboard shortcuts
hs.hotkey.bind(keys, 'Left', left)
hs.hotkey.bind(keys, 'Right', right)
hs.hotkey.bind(keys, 'C', center)
hs.hotkey.bind(keys, 'F', full)
hs.hotkey.bind(keys, ',', cycleLeft)
hs.hotkey.bind(keys, '.', cycleRight)
hs.hotkey.bind(keys, 'Space', sleep)

-- Display a notification when Hammerspoon has finished loading
hs.notify.show("Hammerspoon reloaded!", "", "~/.hammerspoon/init.lua")
