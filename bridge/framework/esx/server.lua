if Config.Framework ~= "esx" then return end

for _, caneItem in pairs(Config.CaneItems) do
    ESX.RegisterUsableItem(caneItem, function(source)
        TriggerClientEvent('solaire-cane:client:toggleCane', source, caneItem)
    end)
end