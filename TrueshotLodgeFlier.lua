-- Author: rrezxth
------------------
-- https://www.wowhead.com/npc=108868/talua


local frame = CreateFrame("Frame")
frame:RegisterEvent("GOSSIP_SHOW")

frame:SetScript("OnEvent", function(self, event, ...)
    if event == "GOSSIP_SHOW" then
        local targetGUID = UnitGUID("target")
        if targetGUID then
            local _, _, _, _, _, npcID = strsplit("-", targetGUID)
            if npcID == "108868" then
                -- print("You have clicked Talua")
                SelectGossipOption(1) 
            end
        end
    end
end)