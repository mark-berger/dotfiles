--- Initialization file for Hammerspoon.
-- @module init

local home = os.getenv("HOME")

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
hs.pathwatcher.new(home .. "/.hammerspoon/", reloadConfig):start()

-- Display a notification when Hammerspoon has finished loading
hs.notify.show("Hammerspoon reloaded!", "", "~/.hammerspoon/init.lua")
