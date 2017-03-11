-- Turn off window animation
hs.window.animationDuration = 0

--- Resizes the active window and moves it to the left or right side.
-- Cycles between the following sizes: one-half, one-third, and two-thirds.
-- @param left Where to position the x coordinate of the window.
function resize(left)
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  frame.y = max.y
  frame.h = max.h

  if frame.w == max.w / 2 then
    frame.x = left * 2 / 3
    frame.w = max.w / 3
  elseif frame.w == math.floor(max.w / 3) then
    frame.x = left / 3
    frame.w = max.w * 2 / 3
  else
    frame.x = left / 2
    frame.w = max.w / 2
  end

  window:setFrame(frame)
end

--- Moves the active window left by its width
function cycleLeft()
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  if frame.x < frame.w - 5 then
    frame.x = max.w - frame.w
  else
    frame.x = frame.x - frame.w
  end

  window:setFrame(frame)
end

--- Moves the active window right by its width
function cycleRight()
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  if frame.x + frame.w < max.w - 5 then
    frame.x = frame.x + frame.w
  else
    frame.x = 0
  end

  window:setFrame(frame)
end

--- Positions the active window in the center of the screen.
function center()
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  frame.x = (max.w - frame.w) / 2
  frame.y = (max.h - frame.h) / 2

  window:setFrame(frame)
end

--- Increases the active window's size to the full screen size.
function full()
  local window = hs.window.focusedWindow()
  local frame = window:frame()
  local max = window:screen():frame()

  frame.x = 0
  frame.y = 0
  frame.w = max.w
  frame.h = max.h

  window:setFrame(frame)
end

--- Resizes the active window and moves it to the far left.
function left()
  resize(0)
end

--- Resizes the active window and moves it to the far right.
function right()
  resize(hs.window.focusedWindow():screen():frame().w)
end
