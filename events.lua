RegisterNetEvent('solaire-cane:client:toggleCane', function()
    if IsCaneEquipped() then
        RemoveCane()
    else
        EquipCane()
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        if IsCaneEquipped() then
            RemoveCane()
        end
    end
end)

AddEventHandler('playerDropped', function()
    if IsCaneEquipped() then
        RemoveCane()
    end
end)