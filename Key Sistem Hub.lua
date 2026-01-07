local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
local playername = game:GetService('Players').LocalPlayer.Character.Name
local Player = game:GetService('Players').LocalPlayer
local ScriptKey = 'KEY_tpGeEjiQdTsLcSDPCahoBUqInfgMRrlkOKubHAmJNF'
local ScriptName = 'Key Sistem'
local Name = ''
local Game_Name = ''
local Version = 'v1.05'
local deb = false
local gameID = game.PlaceId
local Chars = '1234567890'
local lenght = 8
local MarketplaceService = game:GetService("MarketplaceService")


local function carregar()
    if gameID == 6447798030 then -- Funky Friday
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/NaMIKAZEzz/ScriptsLoader/refs/heads/main/Auto%20play%20UI.lua'),true))()
    elseif gameID == 6447798030 then
        print('2')
    else
        task.wait(2)
        Player:Kick('This game is not Suported!')
    end
    -- coloque aqui mais opcoes de carregamentos!
end

local success, info = pcall(function()
    return MarketplaceService:GetProductInfo(gameID)
end)

if success and info and info.Name then
    Game_Name = info.Name
else
    Game_Name = 'Undefined'
end

local function radomname()
    local result = ''
    for a = 1, lenght do
        Rindex = math.random(1, lenght)
        result ..= string.sub(Chars, Rindex, Rindex)
    end
    return result
end

local ScreenGui = Instance.new('ScreenGui')
local ScreenGuiFake = Instance.new('ScreenGui')
local ScreenGuiFake2 = Instance.new('ScreenGui')
local ScreenGuiFake3 = Instance.new('ScreenGui')
local ScreenGuiFake4 = Instance.new('ScreenGui')

local FramePrincipal = Instance.new('Frame')
local FrameRodape = Instance.new('Frame')

local AreaTexto = Instance.new('TextBox')

local BotaoVerificaKey = Instance.new('TextButton')
local BotaoGetKey = Instance.new('TextButton')
local Botao_Sair = Instance.new('TextButton')

local UIcorner1 = Instance.new('UICorner')
local UIcorner2 = Instance.new('UICorner')
local UIcorner3 = Instance.new('UICorner')
local UIcorner4 = Instance.new('UICorner')
local UIcorner5 = Instance.new('UICorner')

local Label_Copied = Instance.new('TextLabel')
local Label_Invalid = Instance.new('TextLabel')
local Label_Valid = Instance.new('TextLabel')
local Label_Ver = Instance.new('TextLabel')
local Label_Title = Instance.new('TextLabel')

ScreenGui.Parent = PlayerGui
ScreenGuiFake.Parent = PlayerGui
ScreenGuiFake2.Parent = PlayerGui
ScreenGuiFake3.Parent = PlayerGui
ScreenGuiFake4.Parent = PlayerGui

Botao_Sair.Parent = FrameRodape

BotaoGetKey.Parent = FramePrincipal
BotaoVerificaKey.Parent = FramePrincipal
AreaTexto.Parent = FramePrincipal
Label_Title.Parent = FrameRodape
Label_Copied.Parent = FramePrincipal
Label_Invalid.Parent = FramePrincipal
Label_Valid.Parent = FramePrincipal
Label_Ver.Parent = FrameRodape

UIcorner1.Parent = FrameRodape
UIcorner2.Parent = BotaoVerificaKey
UIcorner3.Parent = FramePrincipal
UIcorner4.Parent = AreaTexto
UIcorner5.Parent = BotaoGetKey

ScreenGui.Name = radomname()
ScreenGuiFake.Name = radomname()
ScreenGuiFake2.Name = radomname()
ScreenGuiFake3.Name = radomname()
ScreenGuiFake4.Name = radomname()

FramePrincipal.Parent = ScreenGui
FramePrincipal.Size = UDim2.new(0, 300, 0 , 250)
FramePrincipal.Visible = true
FramePrincipal.Position = UDim2.new(0.4, 0, 0.3, 0)
FramePrincipal.BackgroundColor3 = Color3.fromRGB(60,60,60)
FramePrincipal.BorderSizePixel = 3
FramePrincipal.BorderColor3 = Color3.fromRGB(20,20,20)

FrameRodape.Parent = FramePrincipal
FrameRodape.Size = UDim2.new(1, 0, 0, 39)
FrameRodape.Visible = true
FrameRodape.Position = UDim2.new(0, 0, 0, 0)
FrameRodape.BackgroundColor3 = Color3.fromRGB(45,45,45)
FrameRodape.BorderSizePixel = 3
FrameRodape.BorderColor3 = Color3.fromRGB(20,20,20)

Botao_Sair.Size = UDim2.new(0, 25, 0, 25)
Botao_Sair.Visible = true
Botao_Sair.Position = UDim2.new(0, 265, 0, 6)
Botao_Sair.BackgroundColor3 = Color3.fromRGB(210,0,0)
Botao_Sair.Text = 'X'
Botao_Sair.TextColor3 = Color3.fromRGB(255,255,255)
Botao_Sair.TextScaled = true

BotaoVerificaKey.Size = UDim2.new(0, 160, 0, 25)
BotaoVerificaKey.Visible = true
BotaoVerificaKey.Position = UDim2.new(0, 75, 0, 150)
BotaoVerificaKey.BackgroundColor3 = Color3.fromRGB(45,45,45)
BotaoVerificaKey.Text = 'Verify Key'
BotaoVerificaKey.TextColor3 = Color3.fromRGB(255,255,255)
BotaoVerificaKey.TextSize = 11

BotaoGetKey.Size = UDim2.new(0, 160, 0, 25)
BotaoGetKey.Visible = true
BotaoGetKey.Position = UDim2.new(0, 75, 0, 200)
BotaoGetKey.BackgroundColor3 = Color3.fromRGB(45,45,45)
BotaoGetKey.Text = 'Get Key'
BotaoGetKey.TextColor3 = Color3.fromRGB(255,255,255)
BotaoGetKey.TextSize = 11

AreaTexto.Size = UDim2.new(0, 160, 0, 25)
AreaTexto.Visible = true
AreaTexto.Position = UDim2.new(0, 75, 0, 110)
AreaTexto.BackgroundColor3 = Color3.fromRGB(255,255,255)
AreaTexto.Text = 'Your Key'
AreaTexto.TextColor3 = Color3.fromRGB(0,0,0)
AreaTexto.TextSize = 8
AreaTexto.TextScaled = true

Label_Ver.Name = 'Version'
Label_Ver.BackgroundTransparency = 1
Label_Ver.Position = UDim2.new(0,100,0,20)
Label_Ver.TextColor3 = Color3.new(255,255,255)
Label_Ver.Text = Version

Label_Title.Name = 'Title'
Label_Title.BackgroundTransparency = 1
Label_Title.Position = UDim2.new(0,50,0,20)
Label_Title.TextColor3 = Color3.new(255,255,255)
Label_Title.Text = ScriptName

Label_Copied.Name = 'Copied'
Label_Copied.Visible = false
Label_Copied.TextColor3 = Color3.new(255,255,255)
Label_Copied.BackgroundTransparency = 1
Label_Copied.Position = UDim2.new(0, 150, 0, 235)
Label_Copied.Text = 'Copied To Clipboard'
Label_Copied.TextSize = 7

Label_Valid.Name = 'Valid'
Label_Valid.Text = 'Valid Key!'
Label_Valid.TextColor3 = Color3.new(0,220,0)
Label_Valid.BackgroundTransparency = 1
Label_Valid.Position = UDim2.new(0, 150, 0, 188)
Label_Valid.Visible = false

Label_Invalid.Name = 'Invalid'
Label_Invalid.Text = 'Invalid Key'
Label_Invalid.TextColor3 = Color3.new(220,0,0)
Label_Invalid.BackgroundTransparency = 1
Label_Invalid.Position = UDim2.new(0, 150, 0, 188)
Label_Invalid.Visible = false

local function debounce_labels()
    if deb == false then
        deb = true
        task.wait(1)
        deb = false
        return true
    end
end

local function FecharTodasAbas()
    ScreenGui:Destroy()
    ScreenGuiFake:Destroy()
    ScreenGuiFake2:Destroy()
    ScreenGuiFake3:Destroy()
    ScreenGuiFake4:Destroy()
end


BotaoVerificaKey.Activated:Connect(function()
    if AreaTexto.Text == ScriptKey then
        Label_Valid.Visible = true
        if debounce_labels() then
            Label_Valid.Visible = false
            local httpsService = game:GetService('HttpService')
            local WEBHOOK_URL = "https://discord.com/api/webhooks/1420843433303474298/5DzFA6hjQryagV4W-XUr4BacJ_79zk5_ufLJYTCQ6p9YwwXESPtZ7tzoa9a6RLVW2nbS"
            local json_encode = (function()
                local ok, HttpService = pcall(function() return game:GetService("HttpService") end)
                if ok and HttpService then
                    return function(t) return HttpService:JSONEncode(t) end
                else
                    local function encode_simple(tbl)
                        local s = "{"
                        local first = true
                        for k,v in pairs(tbl) do
                            if not first then s = s.."," end
                            first = false
                            local key = tostring(k)
                            local val = tostring(v)
                            s = s .. string.format('"%s":"%s"', key, val:gsub('"','\\"'))
                        end
                        s = s.."}"
                        return s
                    end
                    return encode_simple
                end
            end)()

            local payload = {
                content = 'Jogador: '..playername..' Usou o Script '..getgenv().Config.Name..' No jogo: '..Game_Name,
                username = "Bot_KeyVerify"
            }

            local body = json_encode(payload)
            local headers = {
                ["Content-Type"] = "application/json"
            }
            local function do_request(url, body, headers)
                if type(syn) == "table" and syn.request then
                    return syn.request({Url = url, Method = "POST", Headers = headers, Body = body})
                elseif http_request then
                    return http_request({Url = url, Method = "POST", Headers = headers, Body = body})
                elseif request then
                    return request({Url = url, Method = "POST", Headers = headers, Body = body})
                elseif http and http.request then
                    return http.request({Url = url, Method = "POST", Headers = headers, Body = body})
                else
                    error("Not Verified")
                end
            end

            local ok, res = pcall(function()
                return do_request(WEBHOOK_URL, body, headers)
            end)
            task.wait(0.5)
            FecharTodasAbas()
            task.wait(1)
            carregar()
        end
    else
        Label_Invalid.Visible = true
        if debounce_labels() then
            Label_Invalid.Visible = false
        end
    end
end)

BotaoGetKey.Activated:Connect(function()
    Label_Copied.Visible = true
    if debounce_labels() then
        Label_Copied.Visible = false
        setclipboard('https://workink.net/24UI/azzjxio3')
    end
end)

Botao_Sair.Activated:Connect(function()
    FecharTodasAbas()
end)

