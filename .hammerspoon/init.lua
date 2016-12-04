--- Initialization file for Hammerspoon.
-- @module init

local home = os.getenv("HOME")
local keys = {"ctrl", "alt", "cmd"}

-- Turn off window animation
hs.window.animationDuration = 0

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

--- Resizes the active window and moves it to the left or right side.
-- Cycles between the following sizes: one-half, one-third, one-quarter,
-- three-quarters, and two-thirds.
-- @param left Where to position the x coordinate of the window.
function cycleHorizontal(left)
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  frame.y = max.y
  frame.h = max.h

  if frame.w == max.w / 2 then
    frame.x = left * 2 / 3
    frame.w = max.w / 3
  elseif frame.w == math.floor(max.w / 3) then
    frame.x = left * 3 / 4
    frame.w = max.w / 4
  elseif frame.w == max.w / 4 then
    frame.x = left / 4
    frame.w = max.w * 3 / 4
  elseif frame.w == math.floor(max.w * 3 / 4) then
    frame.x = left / 3
    frame.w = max.w * 2 / 3
  else
    frame.x = left / 2
    frame.w = max.w / 2
  end

  window:setFrame(frame)
end

--- Resizes the active window and moves it to the far left.
function left()
  cycleHorizontal(0)
end

--- Resizes the active window and moves it to the far right.
function right()
  cycleHorizontal(hs.window.focusedWindow():screen():frame().w)
end

-- Watch paths recursively for changes
w = hs.pathwatcher.new(home .. "/.hammerspoon/", reloadConfig):start()

-- Setup global keyboard shortcuts
hs.hotkey.bind(keys, 'Left', left)
hs.hotkey.bind(keys, 'Right', right)

-- Display a notification when Hammerspoon has finished loading
hs.notify.show("Hammerspoon reloaded!", "", "~/.hammerspoon/init.lua")
