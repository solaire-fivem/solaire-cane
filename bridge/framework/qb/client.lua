if Config.Framework ~= "qb" then return end

if Config.Debug then
    print("Framework: QBCore")
end

local QBCore = exports['qb-core']:GetCoreObject()

function HasItem(item)
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData and PlayerData.items then
        for _, itemData in pairs(PlayerData.items) do
            if itemData.name == item then
                return true
            end
        end
    end
    return false
end