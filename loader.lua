local games = {
    [3965173814] = "swordslasher"
}

local supported = games[game.GameId]

if supported then
    game:GetService("Players").LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

    loadstring(game:HttpGet("https://raw.githubusercontent.com/kae-gg/script/main/" .. supported .. ".lua"))()
end
