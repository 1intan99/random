--[[local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/xrer_mstudio45.lua"))()
KeySystemUI.New({
	ApplicationName = "wavez", -- Your Key System Application Name
	Name = "waves", -- Your Script name
	Info = "Get Key", -- Info text in the GUI, keep empty for default text.
	DiscordInvite = "https://discord.gg/e5Tg9SFnrq", -- Optional.
	AuthType = "clientid" -- Can select verifycation with ClientId or IP ("clientid" or "ip")
})
repeat
	task.wait()
until KeySystemUI.Finished() or KeySystemUI.Closed]]
if --[[KeySystemUI.Finished() and KeySystemUI.Closed == false]] true then
	local _SL_SUC, ERR = pcall(function()
		local wavesVer = 2.44
		local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
		--local key = -game:GetService("ReplicatedStorage").Remote.ReqPasskey:InvokeServer()
		local SurviveRemote = game:GetService('ReplicatedStorage').Remote.Survived
		local GamepassRemote = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CheckGamepassOwnership")
		local gamepassIds = {
			4223166,
			9702661,
			14432092,
			14784835,
			25822678,
			111099120,
			141376407,
			14112023
		}
		local subs = {
			'button instatp!!!!',
			"You're banned for exploiting",
			'hacker',
			'im reporting you',
			'i took a snapshot!'
		}
		local ltitles = {
			'welcome',
			'welcome'
		}

		--[[local loadUI

		do -- custom loading
			loadUI = Instance.new("ScreenGui")
			loadUI.IgnoreGuiInset = true
			local loadUIText = Instance.new("TextLabel")
			loadUIText.Size = UDim2.new(1, 0, 1, 0)
			loadUIText.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
			loadUIText.Font = Enum.Font.Ubuntu
			loadUIText.TextColor3 = Color3.new(0.8, 0.8, 0.8)
			loadUIText.Text = "Loading Waves V" .. wavesVer
			loadUIText.TextSize = 28
			loadUIText.Parent = loadUI
			loadUI.Parent = game:GetService('CoreGui')
			loadUI.Name = 'WAVESWAVESWAVESLOADING'
		end]]

		local part = Instance.new('Part', workspace)
		local lplr = game:GetService('Players').LocalPlayer
		local RunService = game:GetService("RunService")
		local challengeFolder = game:GetService('ReplicatedStorage').Remote.Challenges
		local currtween = nil
		local currbutton = nil
		local UpdGoalLocator
		local _autofarmdelay = 0
		local _autofarmavali = false
		part.Anchored = true
		part.Size = Vector3.new(500, 1, 500)
		local clmain = getsenv( lplr.PlayerScripts["CL_MAIN_GameScript"] )
		local function alert(text)
			clmain.newAlert(text, nil, nil, "rainbow")
		end
		game:GetService('ReplicatedStorage').Remote.ReqCharVars.OnClientInvoke = function()
			wait(9e9)
			return {}
		end
		game:GetService("ReplicatedStorage").Remote.FetchPos.OnClientInvoke = function()
			warn('AntiCheat bypassed V2')
			wait(9e9)
			return {}
		end
		local olds
		olds = hookmetamethod(game, '__namecall', function(self, ...)
			local method = getnamecallmethod()
			local args = {
				...
			}
			if self == SurviveRemote and method == 'InvokeServer' then
				args[3] = math.random(1,95) + math.random()
				return olds(self, unpack(args))
			end
			return olds(self, ...)
		end)
		local lib = Rayfield:CreateWindow({
			Name = "WAVES V" .. wavesVer .. " [FE2: V62.73] | @szze",
			LoadingTitle = ltitles[math.random(1, #ltitles)],
			LoadingSubtitle = subs[math.random(1, #subs)],
		})
		game:GetService("ReplicatedStorage").Remote.ClientTimelines.Teleport.OnClientEvent:Connect(function()
			if getgenv().gettingbuttons and currtween and currbutton then
				currtween:Pause()
				local _lolteleported = Instance.new('StringValue', currbutton)
				_lolteleported.Name = '_DoNotTeleportTimelines'
			end
		end)
		getgenv().godmode = nil
		getgenv().waterwalk = nil
		getgenv().muteemotes = nil
		getgenv().skipLoading = nil
		getgenv().changedEmote = 0
		getgenv().walkspeed = 20
		getgenv().jumppower = 50
		local infoTab = lib:CreateTab("Info")
		local mainTab = lib:CreateTab("Map")
		local lpTab = lib:CreateTab("LocalPlayer")
		local miscTab = lib:CreateTab("Misc")
		local challengeTab = lib:CreateTab("Challenges")
		infoTab:CreateLabel('[⚠️/x] - where x is chance of getting anticheated')
		infoTab:CreateLabel('[✅] - Tested and safe')
		infoTab:CreateLabel("V2.44:")
		infoTab:CreateLabel('[~] Fixed Autofarm Breaking as in V62.73 upd')
		function isRandomString(str)
			for i = 1, #str do
				local ltr = str:sub(i, i)
				if ltr:lower() == ltr then
					return false
				end
			end
			return true
		end
		function getButton()
			for i, v in next, workspace.Multiplayer:WaitForChild('Map'):GetDescendants() do
				if (v.IsA(v, 'TouchTransmitter') and string.lower(v.Parent.Name) ~= 'contact' and not string.match(string.lower(v.Parent.Name), 'lostpage') and v.Name:upper() == v.Name and v.Parent.CanTouch and not v.Parent:FindFirstChild('_.press//') and not v.Parent:FindFirstChild('_DoNotTeleportTimelines')) or (v.IsA(v, 'BasePart') and v.Name == 'ExitRegion') then
					local btnthinglol = (v:IsA('TouchTransmitter') and v.Parent or 'ExitRegionDoNot')
					return btnthinglol
				end
			end
			local btncon = nil
			local btnawait = nil
			btncon = workspace.Multiplayer.Map.DescendantAdded:Connect(function(v)
				if (v.IsA(v, 'TouchTransmitter') and string.lower(v.Parent.Name) ~= 'contact' and not string.match(string.lower(v.Parent.Name), 'lostpage') and v.Name:upper() == v.Name and v.Parent.CanTouch and not v.Parent:FindFirstChild('_.press//') and not v.Parent:FindFirstChild('_DoNotTeleportTimelines')) or (v.IsA(v, 'BasePart') and v.Name == 'ExitRegion') then
					btnawait = (v:IsA('TouchTransmitter') and v.Parent or 'ExitRegionDoNot')
					btncon:Disconnect()
				end
			end)
			repeat
				task.wait(0.15)
				if _autofarmavali then
					_autofarmdelay = _autofarmdelay + 0.15
				else
					_autofarmavali = true
				end
			until btnawait ~= nil or not workspace.Multiplayer:FindFirstChild('Map') or exitRegionExists(workspace.Multiplayer:WaitForChild('Map'))
			if btncon then
				btncon:Disconnect()
			end
			if btnawait == nil then
				btnawait = true
			end
			return btnawait
		end
		function Time(targetpos, skipComb)
			local Combined = lplr.Character.Humanoid.RootPart.Position - targetpos
			local tme = ((Combined * Vector3.new(0.6, 0, 0.6)).Magnitude / 23)
			if skipComb then
				return tme
			end
			if tme - _autofarmdelay <= 0 then
				return 'Teleport'
			end
			return tme - _autofarmdelay
		end
		workspace.Multiplayer.ChildAdded:Connect(function(v)
			if v.Name == 'Map' then
				if getgenv().skipLoading then
					task.wait(1)
					game:GetService("ReplicatedStorage").Remote.LoadedMap:FireServer()
				end
			end
		end)
		workspace.Multiplayer.DescendantAdded:Connect(function(t)
			task.wait()
			if string.match(string.lower(t.Name), 'water') and t.IsA(t, 'BasePart') and getgenv().waterwalk then
				t.CanCollide = true
			end
			if getgenv().gOpti then
				if t:IsA('BasePart') and not t.Parent:FindFirstChild('TouchTransmitter') and #t.Name < 5 and t.Parent.Name ~= 'Map' and t.Name ~= 'ExitRegion' then
					t.Transparency = 1
				end
			end
		end)
		local function decimalRandom(minimum, maximum)
			return math.random() * (maximum - minimum) + minimum
		end
		local Synced = true
		local RootPart, RootClone
		local function desync()
			local Char = lplr.Character
			if Synced == true and Char then
				Synced = false
        --desync rootpart
				Char.Parent = game:GetService('ReplicatedStorage')
				RootPart = Char.HumanoidRootPart
				RootPart.CFrame = RootPart.CFrame
				RootPart.Transparency = 0
				RootPart.RootJoint.Enabled = false
				RootClone = RootPart:Clone()
				RootClone.CFrame = RootClone.CFrame
				RootClone.Transparency = 1
				RootClone.Parent = Char
				Char.PrimaryPart = RootClone
				RootClone.RootJoint.Enabled = true
				Char.Parent = workspace
			end
		end
		local function sync()
			local Char = lplr.Character
			if Synced == false and Char then
				Synced = true
				Char.Parent = game:GetService('ReplicatedStorage')
				RootPart.CFrame = RootClone.CFrame
				RootClone.Parent = nil
				RootPart.Parent = Char
				Char.PrimaryPart = RootPart
				RootPart.RootJoint.Enabled = true
				Char.Parent = workspace
			end
		end
		function fetchZipline()
			if workspace.Multiplayer:FindFirstChild('Map') then
				local isZipline, ziplinePart
				for i, v in next, workspace.Multiplayer.Map:GetDescendants() do
					if v.Name == 'StartPole' and v:IsA('Model') and v:FindFirstChild('Base') then
						isZipline = true
						ziplinePart = v.Base
					end
				end
				if ziplinePart then
					return ziplinePart
				else
					return false
				end
			else
				return false
			end
		end
		function tp(cframe, speed, exr)
			local plr = game:GetService("Players").LocalPlayer.Character
			local _hum = plr:FindFirstChildOfClass('Humanoid')
			if not exr then
				task.wait(0.21)
				_hum.RootPart.Anchored = true
			end
			local tween = game:GetService("TweenService")
			local TWEEN = tween:Create(_hum.RootPart, TweenInfo.new(speed, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
				CFrame = CFrame.new(cframe.Position)
			})
			currtween = TWEEN
			TWEEN:Play()
			local finished = false
			local connect;
			connect = TWEEN.Completed:Connect(function()
				_hum.RootPart.Anchored = false
				connect:Disconnect()
				finished = true;
			end)
			repeat
				_hum.RootPart.Velocity = Vector3.zero
				_hum.RootPart.RotVelocity = Vector3.zero
				RunService.Heartbeat:Wait()
			until finished == true or (currbutton and currbutton:FindFirstChild('_DoNotTeleportTimelines') or false)
			_hum.RootPart.Anchored = false
			currtween = nil
		end
		function handler()
			char = lplr.Character
			char:WaitForChild('Humanoid')
			char.Humanoid:GetPropertyChangedSignal('Health'):Connect(function()
				if getgenv().godmode then
					char.Humanoid.MaxHealth = 99999
					char.Humanoid.Health = 99999
				end
			end)
			if getgenv().changedEmote ~= 0 and getsenv then
				local script = getsenv(char.Animate)
				script.changeEmote(changedEmote)
			end
		end
		function exitRegionExists(map)
			local exitReg
			for i,v in next, map:GetChildren() do
				if v.Name == 'ExitRegion' and v:IsA('BasePart') then
					exitReg = v
					break
				end		
			end
			for i, v in next, map:GetDescendants() do
				if v.Name == 'ExitRegion' and v:IsA('BasePart') then
					exitReg = v
					break
				end
			end
			if exitReg and exitReg:IsA('Model') then
				return exitReg.PrimaryPart
			elseif exitReg and exitReg:IsA('BasePart') then
				return exitReg
			else
				return false
			end
		end
		handler()
		lplr.CharacterAdded:Connect(function(char)
			handler()
			task.wait(5)
			lplr.Character:WaitForChild('Humanoid').WalkSpeed = getgenv().walkspeed
			lplr.Character.Humanoid.JumpPower = getgenv().jumppower
		end)
		function float()
			task.spawn(function()
				if gettingbuttons then
					fpart = Instance.new('Part', workspace)
					fpart.Name = 'floatpart'
					fpart.Anchored = true
					while task.wait() and getgenv().gettingbuttons do
						fpart.CFrame = CFrame.new(lplr.Character:WaitForChild('HumanoidRootPart').Position - Vector3.new(0, 3, 0))
					end
				end
			end)
		end
		local waypoints
		local nextWaypointIndex
		local reachedConnection
		local blockedConnection
		local DeathConnection, TCon1, TCon2, FCon, alreadyConnected, reconCon, dieDelay
		dieDelay = 0
		local function newreconnect()
			DeathConnection = lplr.CharacterRemoving:Connect(function()
				dieDelay = 0
				if not getgenv().gettingbuttons then
					return
				end
				if reconCon then
					task.cancel(reconCon)
					reconCon = nil
				end
				_autofarmavali = false
				local nInstance = Instance.new('StringValue', workspace.Multiplayer:WaitForChild('Map'))
				nInstance.Name = 'DEAD[W][X]'
				DeathConnection:Disconnect()
				if FCon and getgenv().gettingbuttons then
					getgenv().gettingbuttons = false
					task.cancel(FCon)
					repeat
						task.wait()
					until lplr.Character
					for i = 0, 4 do
						game:GetService("ReplicatedStorage").Remote.AddedWaiting:FireServer()
						task.wait(1)
					end
					repeat
						task.wait()
					until not workspace:WaitForChild('Multiplayer'):WaitForChild('Map'):FindFirstChild('DEAD[W][X]')
					getgenv().gettingbuttons = true
					FCon = task.spawn(startfarm)
				end
			end)
			if reconCon then
				task.cancel(reconCon)
				reconCon = nil
			end
			local nInstance = Instance.new('StringValue', (workspace.Multiplayer:FindFirstChild('Map') and workspace.Multiplayer.Map or game:GetService('TestService')))
			nInstance.Name = 'DEAD[W][X]'
			pcall(task.cancel,FCon)
			getgenv().gettingbuttons = true
			_autofarmavali = false
			repeat
				task.wait()
			until not workspace:WaitForChild('Multiplayer'):WaitForChild('Map'):FindFirstChild('DEAD[W][X]')
			FCon = task.spawn(startfarm)
		end
		function startfarm()
			while game:GetService('RunService').Heartbeat:Wait() do
				if not getgenv().gettingbuttons then
					break
				end
				if not reconCon then
					reconCon = task.spawn(newreconnect)
					alert('Disconnected reconCon')
				end
				local map = workspace.Multiplayer:WaitForChild('Map')
				local hrp = lplr.Character:FindFirstChildOfClass('Humanoid').RootPart
				hrp.Parent.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
				local wConfig, btns, button
				_autofarmdelay = 0
				while btns == nil do
					print('getting button')
					local s1, e1 = pcall(function()
						btns = getButton()
					end)
					if not s1 then
						warn(e1)
						alert(e1)
					end
					if btns == 'ExitRegionDoNot' then
						btns = true
					end
					game:GetService('RunService').Heartbeat:Wait()
				end
				local isExitRegion = exitRegionExists(map)
				if isExitRegion then
					local successEND, errEND = pcall(function()
						local _remoteCon
						_remoteCon = game:GetService("ReplicatedStorage").Remote.NewMapVote.OnClientEvent:Connect(function()
							_remoteCon:Disconnect()
							dieDelay = dieDelay +  1
							if dieDelay >= 2 then
								lplr.Character:FindFirstChildOfClass('Humanoid'):ChangeState('Dead')
							end
						end)
						task.wait(0.2)
						local ExitRegion = isExitRegion
						local olderegionsize = ExitRegion.Size
						ExitRegion.Size = Vector3.new(0.1, 0.1, 0.1)
						tp(ExitRegion.CFrame, Time(ExitRegion.Position, true), true)
						for i = 0, 5 do
							hrp.CFrame = CFrame.new(ExitRegion.Position)
							task.wait(0.01)
						end
						task.wait(1.6)
						ExitRegion.Size = olderegionsize
					end)
					if not successEND then
						hrp.Parent:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Dead)
						warn(errEND)
						alert('FATAL ERROR: ' .. errEND)
					end
					break
				end
				local sex, esex = pcall(function()
					alert('Zooming to the button ' .. btns.Name)
				end)
				if not sex then
					alert('FATAL ERROR: ' .. esex)
					task.wait(1)
					hrp.Parent:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Dead)
				end
				if not map:FindFirstChild('waves.config') then
					alert('Creating "waves.config" folder')
					wConfig = Instance.new('Folder', map)
					wConfig.Name = 'waves.config'
				else
					wConfig = map:FindFirstChild('waves.config')
				end
				if not wConfig:FindFirstChild('InstaPress') then
					local InstaPressData = Instance.new('BoolValue', wConfig)
					InstaPressData.Name = 'InstaPress'
				end
				if wConfig['InstaPress'].Value == false then
					task.wait(1)
					wConfig['InstaPress'].Value = true
					hrp.CFrame = CFrame.new(btns.Position)
					task.wait(0.15)
					local pdata_lol = Instance.new('BindableFunction', btns)
					pdata_lol.Name = '_.press//'
				end
				button = btns
				currbutton = btns
				hrp.CFrame = CFrame.new(hrp.Position + Vector3.new(0, 20, 0))
				btns.CanTouch = false
				local _TPTime = Time(button.Position)
				hrp.CFrame = CFrame.new(hrp.Position + Vector3.new(0, 20, 0))
				if typeof(_TPTime) == 'number' and _TPTime > 65 then
					lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
					alert('>65s tp time. cancelling.')
				end
				if _TPTime == 'Teleport' then
					hrp.CFrame = CFrame.new(button.Position)
				else
					tp(button.CFrame, _TPTime)
				end
				hrp.CFrame = CFrame.new(button.Position + Vector3.new(0, 5, 0))
				task.wait(0.05)
				btns.CanTouch = true
				if button then
					for i = 0, 7 do
						hrp.CFrame = CFrame.new(button.Position + Vector3.new(0.1, math.random(), 0))
						task.wait(0.05)
					end
				end
				hrp.CFrame = CFrame.new(button.Position)
				local pdata_lol = Instance.new('BindableFunction', btns)
				pdata_lol.Name = '_.press//'
				_autofarmavali = false
				currbutton = nil
			end
		end
		mainTab:CreateToggle({
			Name = "Autofarm [✅, EXEC IN THE MAP]",
			CurrentValue = false,
			Callback = function(getbtns)
				getgenv().gettingbuttons = getbtns
				if getbtns then
					FCon = task.spawn(startfarm)
				else
					task.cancel(FCon)
				end
			end,
		})
		function _autoget()
			task.spawn(function()
				while task.wait(3) and getgenv().misc do
					if not getgenv().misc then
						break
					end
					local _map
					_map = workspace.Multiplayer:WaitForChild('Map')
					for i, v in next, _map:GetDescendants() do
						if string.match(string.lower(v.Name), 'lost') and v.IsA(v, 'BasePart') then
							v.CFrame = CFrame.new(lplr.Character.HumanoidRootPart.Position)
						elseif (string.match(string.lower(v.Name), 'rescue')) and v:FindFirstChild('Contact') then
							v.Contact.CFrame = CFrame.new(lplr.Character.HumanoidRootPart.Position)
						end
					end
				end
			end)
		end
		mainTab:CreateToggle({
			Name = 'AutoTP to ExitRegion [⚠️/very low]',
			CurrentValue = false,
			Callback = function(tper)
				getgenv().tptoexit = tper
				while task.wait(2) and getgenv().tptoexit do
					if not getgenv().tptoexit then
						break
					end
					local map = workspace.Multiplayer:WaitForChild('Map')
					for i, v in next, map:GetDescendants() do
						if v.Name == 'ExitRegion' then
							tp(v.CFrame, 4.5)
							task.wait(4.5)
						end
					end
				end
			end,
		})
		mainTab:CreateToggle({
			Name = 'Auto Get Lost Pages/Escapees [✅]',
			CurrentValue = false,
			Callback = function(gr)
				getgenv().misc = gr
				_autoget()
			end,
		})
		mainTab:CreateToggle({
			Name = 'Skip Loading [✅]',
			CurrentValue = false,
			Callback = function(value)
				getgenv().skipLoading = value
			end,
		})
		mainTab:CreateToggle({
			Name = 'Water Walk [✅]',
			CurrentValue = false,
			Callback = function(wwalk)
				getgenv().waterwalk = wwalk
				for i, t in next, workspace.Multiplayer.Map:GetDescendants() do
					if string.match(string.lower(t.Name), 'water') and t.IsA(t, 'BasePart') and getgenv().waterwalk then
						t.CanCollide = waterwalk
					end
				end
			end
		})
		mainTab:CreateToggle({
			Name = 'Auto Safespot [✅]',
			CurrentValue = false,
			Callback = function(Value)
				getgenv().safespot = Value
				task.spawn(function()
					while task.wait(5) and safespot do
						if not safespot then
							break
						end
						if (lplr.Character.Humanoid.RootPart.Position - part.Position).Magnitude > 250 or ((lplr.Character.Humanoid.RootPart.Position - part.Position).Magnitude) < -250 then
							game:GetService("ReplicatedStorage").Remote.AddedWaiting:FireServer()
							lplr.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(part.Position + Vector3.new(0, 5, 0))
						end
					end
				end)
			end,
		})
		lpTab:CreateToggle({
			Name = 'GodMode [✅]',
			CurrentValue = false,
			Callback = function(gm)
				getgenv().godmode = gm
				handler()
			end,
		})
		lpTab:CreateSlider({
			Name = "WalkSpeed [✅]",
			Range = {
				20,
				26,
			},
			Increment = 1,
			CurrentValue = 20,
			Callback = function(ws)
				getgenv().walkspeed = ws
				lplr.Character:WaitForChild('Humanoid').WalkSpeed = walkspeed
			end,
		})
		lpTab:CreateSlider({
			Name = "JumpPower [✅]",
			Range = {
				50,
				75
			},
			Increment = 1,
			CurrentValue = 50,
			Callback = function(jp)
				getgenv().jumppower = jp
				lplr.Character:WaitForChild('Humanoid').JumpPower = jumppower
			end,
		})
		miscTab:CreateToggle({
			Name = 'Autofarm Optimization [✅, BE IN THE LIFT]',
			CurrentValue = false,
			Callback = function(ao)
				getgenv().gOpti = ao
			end
		})
		miscTab:CreateButton({
			Name = 'VIP Emote Bypass [✅]',
			Callback = function()
				local Players = game:GetService('Players')
				local function Change(Character)
					local script = getsenv(Character.Animate)
					script.changeEmote(1584520816)
				end
				Change(Players.LocalPlayer.Character)
				local function newCharacter(Character)
					task.wait(1)
					Change(Character)
				end
				Players.LocalPlayer.CharacterAdded:Connect(newCharacter)
			end
		})
		miscTab:CreateButton({
			Name = 'Flood Colors Bypass [✅, BE IN THE LOBBY]',
			Callback = function()
				if getgenv().alreadygotfreegp then
					return
				else
					getgenv().alreadygotfreegp = true
				end
				local gphook
				gphook = hookmetamethod(game, '__namecall', function(self, ...)
					local method = getnamecallmethod()
					if self == GamepassRemote and method == 'InvokeServer' then
						return gamepassIds
					end
					if self == game.GetService(game, 'MarketplaceService') and method:lower() == 'userownsgamepassasync' and not checkcaller() then
						return true
					end
					return gphook(self, ...)
				end)
				lplr.PlayerGui.GameGui:Destroy()
				local scriptx = lplr.PlayerGui.MenuGui.Options.CL_NewOptionsScript
				local script2 = lplr.PlayerScripts.CL_MAIN_GameScript
				scriptx.Disabled = true
				script2.Disabled = true
				task.wait(0.4)
				lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
				script2.Disabled = false
				repeat
					task.wait()
				until lplr.PlayerGui:FindFirstChild('GameGui')
				scriptx.Disabled = false
			end
		})
		miscTab:CreateButton({
			Name = "Don't Save Session Data [✅]",
			Callback = function()
				game:GetService('ReplicatedStorage').Remote.UpdOptions:FireServer('RUNSLIDE','\255','Controls',nil,'Gamepad')
				alert("✅ After you will server hop, you'll have the same stats as of now [Currency, XP, Level]")
			end
		})
		challengeTab:CreateButton({
			Name = 'Chill Mode: Swim In Lava',
			Callback = function()
				challengeFolder.SwimInLava:FireServer()
			end
		})
		challengeTab:CreateButton({
			Name = 'Regenerate Air',
			Callback = function()
				challengeFolder.RegeneratedAir:FireServer(5000)
			end
		})
		challengeTab:CreateButton({
			Name = 'Slide Under Barriers',
			Callback = function()
				for i, v in next, workspace.Multiplayer.Map:GetDescendants() do
					if v.Name == 'SlideBeam' and v:IsA('BasePart') then
						challengeFolder.SlideCheck:FireServer(v.Position - Vector3.new(1, 1, 0), v.Position + Vector3.new(0, -1, 1))
					end
				end
			end
		})
		alert('WAVES V' .. wavesVer .. ' loaded')
	end)
	if not _SL_SUC then
		game:GetService('Players').LocalPlayer:Kick(ERR)
		task.wait(2)
		game.Shutdown(game)
	end
end
