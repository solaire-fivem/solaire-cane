if Config.Framework ~= "qbx" then return end

exports['qbx_core']:CreateUseableItem(Config.CaneItem, function(source, item)
    local Player = exports['qbx_core']:GetPlayer(source)
    if not Player then return end
    
    TriggerClientEvent('solaire-cane:client:toggleCane', source)
end)