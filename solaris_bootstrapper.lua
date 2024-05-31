--[[
  _________      .__               .__        
 /   _____/ ____ |  | _____ _______|__| ______
 \_____  \ /  _ \|  | \__  \\_  __ \  |/  ___/
 /        (  <_> )  |__/ __ \|  | \/  |\___ \ 
/_______  /\____/|____(____  /__|  |__/____  >
        \/                 \/              \/ 
made with love by toasty.
]]

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()

if game.PlaceId == 286090429 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solarisarsenal_beta.lua",true))()
elseif game.PlaceId == 301549746 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solariscb_beta.lua",true))()
elseif game.PlaceId == 1480424328 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/solariscb_beta.lua",true))()
else
    local notsupported = lib:InitNotifications():Notify("This game isn't supported for Solaris.", 3, "information")
end
