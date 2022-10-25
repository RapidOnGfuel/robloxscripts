local Players = game:GetService("Players");

local LocalPlayer = Players.LocalPlayer;

local Punch = function()
    for _, Tool in pairs(LocalPlayer.Backpack:GetChildren()) do
        if Tool:FindFirstChild("Handle") then
            Tool.Parent = LocalPlayer.Character;
            
            Tool.Grip = CFrame.new(5e3, 5e3, 5e3);
            Tool.Handle.Massless = true;
        end
    end
    
    local PunchAnim = Instance.new("Animation")
    PunchAnim.AnimationId = "rbxassetid://204062532"
    
    local Animation = LocalPlayer.Character.Humanoid:LoadAnimation(PunchAnim)
    
    Animation:Play()
    
    Animation.Stopped:wait()
    
    LocalPlayer.Character.Humanoid:UnequipTools()
end

LocalPlayer:GetMouse().Button1Down:Connect(function()
    Punch()
end)
