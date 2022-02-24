game:GetService("Workspace"):FindFirstChild("1Regen", true).Parent.Name = "AB1"

-------------------------------------------------------

local Material = loadstring(game:HttpGet("https://pastebin.com/raw/Uf3cpFfW"))()

wait(7.7)

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

-------------------------------------------------------

local X = Material.Load({
	Title = " Nanachi Hub",
	Style = 3,
	SizeX = 470,
	SizeY = 230,
	Theme = "Mocha",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(230,230,230)
	}
})

-------------------------------------------------------

local lp = X.New({
	Title = "Credit"
})

-------------------------------------------------------

local s = lp.Button({
	Text = "Credit",
	Callback = function()

	end,
		Menu = {
		Information = function(self)
			X.Banner({
				Text = "Script By Nanachi_rbx"
			})
		end
	}
})

-------------------------------------------------------

local lp = X.New({
	Title = "LocalPlayer"
})

-------------------------------------------------------

local B = lp.Slider({
	Text = "WalkSpeed",
	Callback = function(ws)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws * 1
	end,
	Min = 16,
	Max = 300,
	Def = 0
})

local C = lp.Slider({
	Text = "JumpPower",
	Callback = function(jp)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp * 1
	end,
	Min = 50,
	Max = 300,
	Def = 0
})

local E = lp.TextField({
	Text = "Teleport Player",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Value].Character.HumanoidRootPart.CFrame
	end,
})

-------------------------------------------------------

local tp = X.New({
	Title = "TP"
})

-------------------------------------------------------

local F = tp.Button({
	Text = "Spawn Base",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44, 3.09800315, -76, 1, 1.32504674e-08, -3.37766348e-14, -1.32504674e-08, 1, -2.74511747e-09, 3.37402598e-14, 2.74511747e-09, 1)
	end,
})

local G = tp.Button({
	Text = "Winner Base",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310.683014, 852.797791, 321.389221, 1, -9.2898228e-10, 1.59557731e-14, 9.2898228e-10, 1, -1.3698024e-08, -1.59430473e-14, 1.3698024e-08, 1)
	end,
})

-------------------------------------------------------

local tr = X.New({
	Title = "Troll"
})

-------------------------------------------------------

local B = tr.Toggle({
	Text = "Auto Spawn Carts",
    Callback = function(Value)
        _G.Destroys = (Value)
        while _G.Destroys do
        wait(0.01)
        for i,v in pairs(game.Workspace.AB1:GetChildren()) do
               fireclickdetector(v:FindFirstChild("Click"))
            end
            end
        end,
	Enabled = false
})

local B = tr.Toggle({
	Text = "Speed All Carts",
    Callback = function(Value)
        _G.Destroy = (Value)
        while _G.Destroy do
        wait(0.01)
        for i,v in pairs(game.Workspace.Carts:GetChildren()) do
               fireclickdetector(v:FindFirstChild("Up").Click)
            end
            end
        end,
	Enabled = false
})

local B = tr.Toggle({
	Text = "Slow All Carts",
    Callback = function(Value)
        _G.Destroyd = (Value)
        while _G.Destroyd do
        wait(0.01)
        for i,v in pairs(game.Workspace.Carts:GetChildren()) do
               fireclickdetector(v:FindFirstChild("Down").Click)
            end
            end
        end,
	Enabled = false
})

local B = tr.Toggle({
	Text = "Engine on/off All Carts",
    Callback = function(Value)
        _G.disable = (Value)
        while _G.disable do
            wait(0.01)
        for i,v in pairs(game.Workspace.Carts:GetChildren()) do
               fireclickdetector(v:FindFirstChild("On").Click)
            end
        end
        end,
	Enabled = false
})
