local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Version = 'v1.05'
local Game_Name = 'Base UI'
local players = game:GetService('Players') or game.Players.PlayerAdded:wait()
local playerLocal = players.LocalPlayer
local playerCharacter = players.LocalPlayer.Character.Humanoid
local rootpart = playerLocal.Character.HumanoidRootPart or playerLocal.Character.PrimaryPart
local WalkChangeFunction
local VIM = game:GetService("VirtualInputManager")


local Window = Fluent:CreateWindow({
    Title = "NaM HUB " .. Version,
    SubTitle = "NaMikaze",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local Started = false
local Bs,Bd,Bj,Bk

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    AutoPlay = Window:AddTab({Title = "Auto Play", Icon = "bot"}),
    LocalPlayer = Window:AddTab({ Title = "Local Player", Icon = "person-standing" })
}

local Options = Fluent.Options



getgenv().Config = {
    Script_Name = 'Auto Play',
	Delay = 0.50,
	DivPor = 20,
	Stop = false,
    Left = true,
    Right = false
}

getgenv().Arrows = {
    Arrow1 = Enum.KeyCode.Left,
    Arrow2 = Enum.KeyCode.Down,
    Arrow3 = Enum.KeyCode.Up,
    Arrow4 = Enum.KeyCode.Right
}

local function segurarteclaS(part)
	task.wait(getgenv().Config.Delay)
	VIM:SendKeyEvent(true, getgenv().Arrows.Arrow1, false, game)
	for a,b in ipairs(part:GetChildren()) do
		if b.Size.Y.Scale > 1 then
			task.wait(b.Size.Y.Scale / getgenv().Config.DivPor)
		end
	end
	VIM:SendKeyEvent(false, getgenv().Arrows.Arrow1, false, game)
end
local function segurarteclaD(part)
	task.wait(getgenv().Config.Delay)
	VIM:SendKeyEvent(true, getgenv().Arrows.Arrow2, false, game)
	for a,b in ipairs(part:GetChildren()) do
		if b.Size.Y.Scale > 1 then
			task.wait(b.Size.Y.Scale / getgenv().Config.DivPor)
		end
	end
	VIM:SendKeyEvent(false, getgenv().Arrows.Arrow2, false, game)
end
local function segurarteclaJ(part)
	task.wait(getgenv().Config.Delay)
	VIM:SendKeyEvent(true, getgenv().Arrows.Arrow3, false, game)
	for a,b in ipairs(part:GetChildren()) do
		if b.Size.Y.Scale > 1 then
			task.wait(b.Size.Y.Scale / getgenv().Config.DivPor)
		end
	end
	VIM:SendKeyEvent(false, getgenv().Arrows.Arrow3, false, game)
end
local function segurarteclaK(part)
	task.wait(getgenv().Config.Delay)
	VIM:SendKeyEvent(true, getgenv().Arrows.Arrow4, false, game)
	for a,b in ipairs(part:GetChildren()) do
		if b.Size.Y.Scale > 1 then
			task.wait(b.Size.Y.Scale / getgenv().Config.DivPor)
		end
	end
	VIM:SendKeyEvent(false, getgenv().Arrows.Arrow4, false, game)
end

local function PrincipalLoop(botaoS, botaoD, botaoJ, botaoK)
	Started = true
    print('Loop Main')
    print(botaoS, botaoD, botaoJ, botaoK)
	Bs = botaoS.ChildAdded:Connect(function(part)
        if getgenv().Config.Stop == true then
            if #part:GetChildren() > 1 then
                segurarteclaS(part)
            else
                task.wait(getgenv().Config.Delay)
                VIM:SendKeyEvent(true, getgenv().Arrows.Arrow1, false, game)
                VIM:SendKeyEvent(false, getgenv().Arrows.Arrow1, false, game)
            end
        end
	end)

	Bd = botaoD.ChildAdded:Connect(function(part)
        if getgenv().Config.Stop == true then
            if #part:GetChildren() > 1 then
                segurarteclaD(part)
            else
                task.wait(getgenv().Config.Delay)
                VIM:SendKeyEvent(true, getgenv().Arrows.Arrow2, false, game)
                VIM:SendKeyEvent(false, getgenv().Arrows.Arrow2, false, game)
            end
        end
	end)

	Bj = botaoJ.ChildAdded:Connect(function(part)
        if getgenv().Config.Stop == true then
            if #part:GetChildren() > 1 then
                segurarteclaJ(part)
            else
                task.wait(getgenv().Config.Delay)
                VIM:SendKeyEvent(true, getgenv().Arrows.Arrow3, false, game)
                VIM:SendKeyEvent(false, getgenv().Arrows.Arrow3, false, game)
            end
        end
	end)

	Bk = botaoK.ChildAdded:Connect(function(part)
        if getgenv().Config.Stop == true then
            if #part:GetChildren() > 1 then
                segurarteclaK(part)
            else
                task.wait(getgenv().Config.Delay)
                VIM:SendKeyEvent(true, getgenv().Arrows.Arrow4, false, game)
                VIM:SendKeyEvent(false, getgenv().Arrows.Arrow4, false, game)
            end
        end
	end)
end

PlayerGui.ChildAdded:Connect(function(part)
	if part.Name == 'Window' then
        if getgenv().Config.Left then
            print('veio pro left')
            local inners = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('Window'):WaitForChild('Game'):WaitForChild('Fields'):WaitForChild('Left'):WaitForChild('Inner')
            ButtonS = inners.Lane1.Notes
            ButtonD = inners.Lane2.Notes
            ButtonJ = inners.Lane3.Notes
            ButtonK = inners.Lane4.Notes
            print(ButtonS,ButtonD,ButtonJ,ButtonK)
        elseif getgenv().Config.Right then
            print('veio pro right')
            local inners = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild('Window'):WaitForChild('Game'):WaitForChild('Fields'):WaitForChild('Right'):WaitForChild('Inner')
            ButtonS = inners.Lane1.Notes
            ButtonD = inners.Lane2.Notes
            ButtonJ = inners.Lane3.Notes
            ButtonK = inners.Lane4.Notes
            print(ButtonS,ButtonD,ButtonJ,ButtonK)
        end
		if Started == false then
			PrincipalLoop(ButtonS,ButtonD,ButtonJ,ButtonK)
		else
			Bs:Disconnect()
	 		Bd:Disconnect()
			Bj:Disconnect()
	 		Bk:Disconnect()
			PrincipalLoop(ButtonS,ButtonD,ButtonJ,ButtonK)
		end
	end		
end)
		

do
    --[[Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })



    Tabs.Main:AddParagraph({
        Title = "Paragraph",
        Content = "This is a paragraph.\nSecond line!"
    })



    Tabs.Main:AddButton({
        Title = "Button",
        Description = "Very important button",
        Callback = function()
            Window:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    }) ]]--

    -- Auto Play

    local ToggleAutoPlay = Tabs.AutoPlay:AddToggle('Auto Play', {Title = 'Auto Play', Default = false})
    
    ToggleAutoPlay:OnChanged(function(Value)
        getgenv().Config.Stop = Value
    end)

    local DelayInput = Tabs.AutoPlay:AddInput("Input", {
        Title = "Hit Delay",
        Default = 0.50,
        Placeholder = "Placeholder",
        Numeric = true, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            getgenv().Config.Delay = Value
        end
    })

    local SliderArrow = Tabs.AutoPlay:AddSlider('SliderArrow', {
        Title = 'LongArrow Hold',
        Description = 'Adjust as you wish',
        Default = 20,
        Min = 0,
        Max = 30,
        Rounding = 0.5,
        Callback = function(Value)
            getgenv().Config.DivPor = Value
        end
    })

    local ChooseSide = Tabs.AutoPlay:AddDropdown('ChooseSideDropDown', {
        Title = 'Choose Side',
        Values = {'Left', 'Right'},
        Multi = false,
        Default = 1      
    })
    ChooseSide:OnChanged(function(Value)
        if Value == 'Left' then
            getgenv().Config.Left = true
            getgenv().Config.Right = false
        elseif Value == "Right" then
            getgenv().Config.Left = false
            getgenv().Config.Right = true
        end 
    end)

    --Local Player

    local ToggleWalkSpeed = Tabs.LocalPlayer:AddToggle('WalkSpeed', {Title = 'WalkSpeed', Default = false})
    
    local SliderWalk = Tabs.LocalPlayer:AddSlider("Sliderwalkspeed", {
        Title = "Speed",
        Description = "Change your WalkSpeed",
        Default = 22,
        Min = 0,
        Max = 200,
        Rounding = 1,
        Callback = function(Value)
            if ToggleWalkSpeed.Value then
                playerCharacter.WalkSpeed = Value
            end
        end
    })

    ToggleWalkSpeed:OnChanged(function(Value)
        if Value then
			if WalkChangeFunction then return end

			WalkChangeFunction = playerLocal.Character.Humanoid.Changed:Connect(function(prop)
				if prop == "WalkSpeed" then
					playerLocal.Character.Humanoid.WalkSpeed = SliderWalk.Value
				end
			end)
			playerLocal.Character.Humanoid.WalkSpeed = SliderWalk.Value
        else
			WalkChangeFunction:Disconnect()
			WalkChangeFunction = nil
            playerCharacter.WalkSpeed = 22
        end
    end)

    -- Testes e toggles (adicione aqui os botoes, toggles e etc... pra testar acoes mais complexas)

    

    --[[local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)


    
    local MultiDropdown = Tabs.Main:AddDropdown("MultiDropdown", {
        Title = "Dropdown",
        Description = "You can select multiple values.",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = true,
        Default = {"seven", "twelve"},
    })

    MultiDropdown:SetValue({
        three = true,
        five = true,
        seven = false
    })

    MultiDropdown:OnChanged(function(Value)
        local Values = {}
        for Value, State in next, Value do
            table.insert(Values, Value)
        end
        print("Mutlidropdown changed:", table.concat(Values, ", "))
    end)



    local Colorpicker = Tabs.Main:AddColorpicker("Colorpicker", {
        Title = "Colorpicker",
        Default = Color3.fromRGB(96, 205, 255)
    })

    Colorpicker:OnChanged(function()
        print("Colorpicker changed:", Colorpicker.Value)
    end)
    
    Colorpicker:SetValueRGB(Color3.fromRGB(0, 255, 140))



    local TColorpicker = Tabs.Main:AddColorpicker("TransparencyColorpicker", {
        Title = "Colorpicker",
        Description = "but you can change the transparency.",
        Transparency = 0,
        Default = Color3.fromRGB(96, 205, 255)
    })

    TColorpicker:OnChanged(function()
        print(
            "TColorpicker changed:", TColorpicker.Value,
            "Transparency:", TColorpicker.Transparency
        )
    end)



    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind",
        Mode = "Toggle", -- Always, Toggle, Hold
        Default = "LeftControl", -- String as the name of the keybind (MB1, MB2 for mouse buttons)

        -- Occurs when the keybind is clicked, Value is `true`/`false`
        Callback = function(Value)
            print("Keybind clicked!", Value)
        end,

        -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
        ChangedCallback = function(New)
            print("Keybind changed!", New)
        end
    })

    -- OnClick is only fired when you press the keybind and the mode is Toggle
    -- Otherwise, you will have to use Keybind:GetState()
    Keybind:OnClick(function()
        print("Keybind clicked:", Keybind:GetState())
    end)

    Keybind:OnChanged(function()
        print("Keybind changed:", Keybind.Value)
    end)

    task.spawn(function()
        while true do
            wait(1)

            -- example for checking if a keybind is being pressed
            local state = Keybind:GetState()
            if state then
                print("Keybind is being held down")
            end

            if Fluent.Unloaded then break end
        end
    end)

    Keybind:SetValue("MB2", "Toggle") -- Sets keybind to MB2, mode to Hold


    local Input = Tabs.Main:AddInput("Input", {
        Title = "Input",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })

    Input:OnChanged(function()
        print("Input updated:", Input.Value)
    end)==]]
end 


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("NaMikazeHUB")
SaveManager:SetFolder("NaMikazeHUB/"..Game_Name)

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "NaMikaze",
    Content = "The script has been loaded.",
    Duration = 5
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!

SaveManager:LoadAutoloadConfig()
