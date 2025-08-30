if Config.Framework ~= "qbx" then return end

for _, caneItem in pairs(Config.CaneItems) do
    exports.qbx_core:CreateUseableItem(caneItem, function(source, item)
        local Player = exports.qbx_core:GetPlayer(source)
        if not Player then return end
        TriggerClientEvent('solaire-cane:client:toggleCane', source, item.name)
    end)
end