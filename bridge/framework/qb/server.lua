if Config.Framework ~= "qb" then return end

for _, caneItem in pairs(Config.CaneItems) do
    QBCore.Functions.CreateUseableItem(caneItem, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if not Player then return end
        TriggerClientEvent('solaire-cane:client:toggleCane', source, item.name)
    end)
end