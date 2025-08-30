RegisterNetEvent('solaire-cane:client:toggleCane', function(itemName)
    if IsCaneEquipped() then
        RemoveCane()
    else
        EquipCane(itemName)
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName and IsCaneEquipped() then
        RemoveCane()
    end
end)