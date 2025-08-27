if Config.Framework ~= "qbx" then return end

if Config.Debug then
    print("Framework: QBox")
end

function HasItem(item)
    local PlayerData = exports.qbx_core:GetPlayerData()
    if PlayerData and PlayerData.items then
        for _, itemData in pairs(PlayerData.items) do
            if itemData.name == item then
                return true
            end
        end
    end
    return false
end