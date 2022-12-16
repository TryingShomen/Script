--[[

  Script made by : Ricardo At School#7261

]]

local SupportedGame = {
    TOH = 1962086868,
    pro_TOH = 3582763398,
    RBBATTLES_TOH = 7227293156,
    BanLand_TOH = 5253186791
}

if game.PlaceId == SupportedGame.TOH or SupportedGame.pro_TOH or SupportedGame.RBBATTLES_TOH or SupportedGame.BanLand_TOH then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Helix Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "HelixHub-Tower_Of_Hell"})

    --// Finding the humanoid.io \\
    local hm = "Humanoid"
    for i,v in pairs(game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name):GetChildren()) do
        if v.ClassName == "Humanoid" then
            hm = v
        end
    end

     --// VARIABLES \\
     local plr = game:GetService("Players").LocalPlayer
     local plrs = game:GetService("Players")
     local Char = game:GetService("Workspace"):FindFirstChild(plr.Name)
     local KickScriptv1 = getsenv(plr.PlayerScripts.LocalScript)
     local ts = game:GetService("TweenService")
     local hmr = Char:WaitForChild("HumanoidRootPart")
     local FG = game:GetService("Workspace").tower.sections.finish.FinishGlow
    local shitster = game:GetService("Workspace").tower.sections.finish.start
    local Jumppowder = Char:FindFirstChild(hm.Name).JumpPower
    local s_Mutator = nil
    local s_Gear = nil

     --// AUTO UPDATE VARIABLES \\
     local X = nil
     local Y = nil
     local Z = nil
     hmr.Changed:Connect(function()
        X = hmr.Position.X
        Y = hmr.Position.Y
        Z = hmr.Position.Z
        warn("NEW POSITION :",X,Y,Z)
     end)



    --// TABLES \\
    local Mean = {
        2726552643,
        148753698,
        40610389,
        429110922,
        96612256,
        69823278,
        33798237,
        38255908,
        38023771,
        64723938,
        48256472,
        79745056
    }

    --// HOOKFUNCTIONS \\
    function HookfunctionKick()
        hookfunction(KickScriptv1.kick,function(...)
            warn("KICK HOOKFUNCTION HAS BEEN ACTIVATED, REMAIN CALM IT WAS STOPPED")
            return nil;
        end)
    end

    --// FUNCTIONS \\
    function SnipeKillScript()
        game:GetService("Workspace").ChildAdded:Connect(function(child)
            if child.Name == plr.Name then
                child:FindFirstChild("KillScript")
            end
        end)
    end
    function INSTADESTROYTHATKILLSCRIPT()
        for i,v in pairs(Char:GetChildren()) do
            if v.Name == "KillScript" then
                v:Destroy()
            end
        end
        Char.ChildAdded:Connect(function(child)
            if child.Name == "KillScript" then
                child:Destroy()
            end
        end)
    end
    function KickWhenAdminJoins()

        plrs.ChildAdded:Connect(function(newPlr)
            for i,v in pairs(Mean) do
                if v == newPlr.UserId then
                    plr:Kick("ADMIN JOINED THE GAME")
                    return
                else
                    warn(newPlr.Name.." CANNOT ban you, Cool Boy")
                end
            end
        end)
    end
    function AutoFindHumanoid()
        game:GetService("RunService").RenderStepped:Connect(function(...)
            for i,v in pairs(game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name):GetChildren()) do
                if v.ClassName == "Humanoid" then
                    hm = v
                end
            end
        end)
    end
    function AutoChangeJumpPower()
        game:GetService("RunService").Heartbeat:Connect(function()
            Char = game:GetService("Workspace"):FindFirstChild(plr.Name)
            Char:FindFirstChild(tostring(hm)).JumpPower = Jumppowder
        end)
    end

    --// ACTIVATE FUNCTION \\
    SnipeKillScript()
    HookfunctionKick()
    KickWhenAdminJoins()
    INSTADESTROYTHATKILLSCRIPT()
    AutoFindHumanoid()
    AutoChangeJumpPower()

     --// TABS \\
     local Autofarm = Window:MakeTab({
        Name = "Autofarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local player = Window:MakeTab({
        Name = "Player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Misc = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Info = Window:MakeTab({
        Name = "Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --// SECTIONS \\
    local InformationAF = Autofarm:AddSection({
        Name = "Information"
    })
    local FunctionAF = Autofarm:AddSection({
        Name = "Main Tab Function"
    })
    local Chr = player:AddSection({
	    Name = "Character"
    })
    local GlobalShit = player:AddSection({
	    Name = "< Global >"
    })
    local Mutato = Misc:AddSection({
        Name = "Mutators"
    })
    local Ge = Misc:AddSection({
        Name = "Gear"
    })
    local Bo = Misc:AddSection({
        Name = "Box's"
    })

    --// TOGGLES \\
    FunctionAF:AddToggle({
        Name = "Autofarm",
        Default = false,
        Callback = function(Autofarm_V)
            getgenv().Autofarm = Autofarm_V

            while getgenv().Autofarm do
                if not getgenv().Autofarm then
                    for i,v in pairs(Char) do
                        if v.ClassName == "Humanoid" then
                            v.Name = "Humanoid"
                            return
                        end
                    end 
                end
                for i,v in pairs(game:GetService("Workspace"):FindFirstChild(plr.Name):GetChildren()) do
                    if v.Name == "Humanoid" and v.ClassName == "Humanoid" then
                        v.Name = math.random(1000,10000)
                    end
                end
                task.wait(-1)
                if plr.PlayerGui.timer.timeLeft.TextColor3 ~= Color3.fromRGB(0,255,0) then
                    for i,v in pairs(game:GetService("Workspace"):FindFirstChild(plr.Name):GetChildren()) do
                        if v.Name == "Humanoid" and v.ClassName == "Humanoid" then
                            v.Name = math.random(1000,10000)
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace"):FindFirstChild(plr.Name):GetChildren()) do
                        if v.Name == "Humanoid" and v.ClassName == "Humanoid" then
                            v.Name = math.random(1000,10000)
                        end
                    end
                    for i,v in pairs(game:GetService("Workspace"):FindFirstChild(plr.Name):GetChildren()) do
                        if v.Name == "KillScript" and v.ClassName == "LocalScript" then
                            v:Destroy()
                        end
                    end
                    shitster = game:GetService("Workspace").tower.sections.finish.start
                    FG = game:GetService("Workspace").tower.sections.finish.FinishGlow
                    Char = game:GetService("Workspace"):FindFirstChild(plr.Name)
                    hmr = Char:WaitForChild("HumanoidRootPart")
                    local t1 = ts:Create(hmr,TweenInfo.new((hmr.Position - FG.Position).Magnitude/25,Enum.EasingStyle.Linear),{CFrame = CFrame.new(hmr.Position.X,FG.Position.Y,hmr.Position.Z)})
                    local BV_v1_NIns = Instance.new("BodyVelocity",hmr)
                    BV_v1_NIns.Velocity = Vector3.new(0,0,0)
                    t1:Play()
                    task.wait((hmr.Position - FG.Position).Magnitude/25)
                    local t3 = ts:Create(hmr, TweenInfo.new((hmr.Position - shitster.Position).Magnitude/95,Enum.EasingStyle.Linear),{CFrame = CFrame.new(shitster.Position)})
                    t3:Play()
                    task.wait((hmr.Position-shitster.Position).Magnitude/95)
                    local t2 = ts:Create(hmr,TweenInfo.new((hmr.Position - FG.Position).Magnitude/65,Enum.EasingStyle.Linear),{CFrame = CFrame.new(FG.Position)})
                    t2:Play()
                    task.wait((hmr.Position - FG.Position).Magnitude/65)
                    BV_v1_NIns:Destroy()
                else
                    warn("ALREADY REACHED THE END")
                end
                task.wait(0)
            end
        end    
    })
    Mutato:AddToggle({
        Name = "Auto Buy Selected Mutator (2.5)",
        Default = false,
        Callback = function(v)
            getgenv().Buy = v
            while getgenv().Buy do
                if not getgenv().Buy then return end
                local ohString1 = tostring(s_Mutator)
                local ohString2 = "regular"

                game:GetService("ReplicatedStorage").buyMutator:InvokeServer(ohString1, ohString2)
                task.wait(2.5)
            end
        end    
    })
    Ge:AddToggle({
        Name = "Auto Buy Selected Gear (2.5)",
        Default = false,
        Callback = function(v)
            getgenv().Buya = v
            while getgenv().Buya do
                if not getgenv().Buya then return end
                local ohString1 = tostring(s_Gear)
                local ohString2 = "regular"

                game:GetService("ReplicatedStorage").buyItem:InvokeServer(ohString1, ohString2)
                task.wait(2.5)
            end
        end    
    })
    Bo:AddToggle({
        Name = "Auto Buy Box (0.1)",
        Default = false,
        Callback = function(v)
            getgenv().BoxBuy = v

            while getgenv().BoxBuy do
                if not getgenv().BoxBuy then return end
                local ohString1 = "Regular"

                game:GetService("ReplicatedStorage").openBox:InvokeServer(ohString1)
                task.wait(0.1)
            end
        end    
    })

    --// SLIDERS \\
    Chr:AddSlider({
        Name = "Walkspeed",
        Min = 0,
        Max = 500,
        Default = 5,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Studs",
        Callback = function(speed)
            game:GetService("ReplicatedStorage"):FindFirstChild("globalSpeed").Value = speed
        end    
    })
    Chr:AddSlider({
        Name = "JumpPower",
        Min = 0,
        Max = 1000,
        Default = 5,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Studs",
        Callback = function(Jp)
            Jumppowder = Jp
        end    
    })
    GlobalShit:AddSlider({
        Name = "Gravity",
        Min = 0,
        Max = 1000,
        Default = 5,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "",
        Callback = function(Grav)
            game:GetService("Workspace").Gravity = Grav
        end    
    })
    GlobalShit:AddSlider({
        Name = "Health",
        Min = 1,
        Max = 100,
        Default = 5,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "HP",
        Callback = function(HP)
            Char = game:GetService("Workspace"):FindFirstChild(plr.Name)
            Char:FindFirstChild(tostring(hm)).Health = HP
        end    
    })

    --// DROPDOWNS \\
    Mutato:AddDropdown({
        Name = "Buy Mutators",
        Default = nil,
        Options = {"speed", "gravity","fog",'negative','lengthen','invincibility','time'},
        Callback = function(Mu)
            s_Mutator = Mu
            local ohString1 = tostring(Mu)
            local ohString2 = "regular"

            game:GetService("ReplicatedStorage").buyMutator:InvokeServer(ohString1, ohString2)
        end    
    })
    Ge:AddDropdown({
        Name = "Buy Gear",
        Default = nil,
        Options = {"speed", "gravity","fusion","trowel","hourglass"},
        Callback = function(v)
            s_Gear = tostring(v)
            local ohString1 = tostring(v)
            local ohString2 = "regular"

            game:GetService("ReplicatedStorage").buyItem:InvokeServer(ohString1, ohString2)
        end    
    })

    --// PARAGRAPHS \\
    InformationAF:AddParagraph("Tab Information","I do not know IF you were to die in the middle of farming, I do not know if it will break i'm super lazy to try to fix, I recommend not clicking F9 - Most of the time you wont even collect the Xyles, might work on a fix")

    --// BUTTONS \\
    Info:AddButton({
        Name = "Get Discord",
        Callback = function()
            setclipboard("https://discord.gg/2sth67eUH8")
        end    
    })
    Info:AddButton({
        Name = "Get Script Source",
        Callback = function()
            setclipboard("https://raw.githubusercontent.com/TryingShomen/Script/main/Folder/GameScript/Helix.lua")
        end    
    })
else
    game:GetService("Players").LocalPlayer:Kick("UNSUPPORTED GAME DETECTED | ARE YOU SURE THAT YOU JOINED A SUPPORTED GAME?")
end
