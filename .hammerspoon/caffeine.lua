--- Menu bar application that prevents the system from sleeping.
-- @module caffeine

local caffeine = hs.menubar.new()

--- Updates the menu bar icon when toggling caffeine states.
-- @state True if the specified type of sleep is being prevented, false if not.
function setCaffeineDisplay(state)
  if state then
    caffeine:setIcon("icons/caffeineActive@2x.png")
  else
    caffeine:setIcon("icons/caffeineInactive@2x.png")
  end
end

--- Handles the click action on the caffeine menu icon, toggling sleep state.
function caffeineClicked()
  setCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

if caffeine then
  caffeine:setClickCallback(caffeineClicked)
  setCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

--- Requests the system to sleep immediately
function sleep()
  hs.caffeinate.systemSleep()
end
