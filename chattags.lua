local ServerScriptService = game:GetService("ServerScriptService")
local ChatService = require(ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))
local Players = game:GetService("Players")
local Owner = {'ooassreal123'} --Change Username to your username

ChatService.SpeakerAdded:Connect(function(PlrName)
    local Speaker = ChatService:GetSpeaker(PlrName)
    for _, v in pairs(Owner) do
        if Players[PlrName].Name == v then
            Speaker:SetExtraData('Tags', {{TagText = "vxpe developer", TagColor = Color3.fromRGB(4, 175, 236)}}) -- You can change the color of the text by adjusting the color code. 
        end
    end
end) 
