local tier = "Noob" --Change this to the max tier you can capture
 
while wait() do
    for _,v in pairs(workspace.customers:GetChildren()) do
        if v and v:FindFirstChild("properties") then
            if v.properties.tier.Value == tier and v.properties.owner.Value == nil then
                local distance = game.Players.LocalPlayer:DistanceFromCharacter(v:GetPrimaryPartCFrame().p)
                if distance <= 70 then
                    local customerModel = v
                    game.ReplicatedStorage.remotes.bindCustomer:FireServer(customerModel)
                end
            end
        end
    end
end
