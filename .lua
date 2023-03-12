-- [RELEASE!] Anime Lost Simulator
if game.PlaceId == 12413786484 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "[RELEASE!] Anime Lost Simulator", HidePremium = false,IntroText = "Howless Hub", SaveConfig = true, ConfigFolder = "Config"})

--Values
_G.AutoClick = true
_G.AutoRebirth = true
_G.AutoHatch = true
_G.SelectEgg = "Sarnek Egg"
_G.EquipBestPet = true
_G.EquipBestSword = true
_G.SkillSpin = true
_G.UseSkill = true


--Functions
function AutoClick()
    while _G.AutoClick == true do
        game:GetService("ReplicatedStorage").Remotes.attack:FireServer()
        wait(.0000001)
     end
end


function AutoRebirth()
    while _G.AutoRebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(1)
        wait(1)
     end
end


function AutoHatch()
    while _G.AutoHatch == true do
        game:GetService("ReplicatedStorage").Remotes.spinEggFunc:InvokeServer("Open_1")
        end
end

function EquipBestPet()
    while _G.EquipBestPet == true do
       game:GetService("ReplicatedStorage").Remotes.equipBest:FireServer("Pets")
       wait(5)
       end
    end

function EquipBestSword()
    while _G.EquipBestSword == true do
       game:GetService("ReplicatedStorage").Remotes.equipBest:FireServer("Swords")
        wait(5)
    end
end

function SkillSpin()
    while _G.SkillSpin == true do
        game:GetService("ReplicatedStorage").Remotes.spinSkillsFunc:InvokeServer()
        wait(.2)
    end
end

function UseSkill()
    while _G.UseSkill == true do
       game:GetService("ReplicatedStorage").Remotes["Send Information"]:FireServer("Slot1")
       wait(.2)
    end
end



-- Tabs
local FarmTab = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- Farm Toggles
FarmTab:AddToggle({
	Name = "AutoClick",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
        AutoClick()
	end    
})


FarmTab:AddToggle({
	Name = "AutoRebirth",
	Default = false,
	Callback = function(Value)
		_G.AutoRebirth = Value
        AutoRebirth()
	end    
})


FarmTab:AddToggle({
	Name = "UseSkill",
	Default = false,
	Callback = function(Value)
		_G.UseSkill = Value
        UseSkill()
	end    
})


EggsTab:AddLabel("Must Be Close!")

EggsTab:AddToggle({
	Name = "AutoHatch",
	Default = false,
	Callback = function(Value)
        _G.AutoHatch = Value
        AutoHatch()
	end    
})

MiscTab:AddToggle({
	Name = "Equip Best Pets(5sec)",
	Default = false,
	Callback = function(Value)
        _G.EquipBestPet = Value
        EquipBestPet()
	end    
})

MiscTab:AddToggle({
	Name = "Equip Best Sword(5sec)",
	Default = false,
	Callback = function(Value)
        _G.EquipBestSword = Value
        EquipBestSword()
	end    
})


MiscTab:AddLabel("Must Be Close!")

MiscTab:AddToggle({
	Name = "SkillSpin",
	Default = false,
	Callback = function(Value)
        _G.SkillSpin = Value
        SkillSpin()
	end    
})


CreditsTab:AddLabel("Made by Howless <3")



-- Dropdowns
EggsTab:AddDropdown({
    Name = "SelectEgg",
	Default = "Sarnek Egg",
	Options = {"Sarnek Egg", "2"},
	Callback = function(Value)
		_G.SelectEgg = Value
        print(_G.SelectEgg)
	end    
})

end
OrionLib:Init()
