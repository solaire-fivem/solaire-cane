if Config.Framework ~= "esx" then return end

if Config.Debug then
    print("Framework: ESX")
end

function HasItem(item)
    local PlayerData = ESX.GetPlayerData()
    if not PlayerData or not PlayerData.inventory then return false end

    for _, itemData in pairs(PlayerData.inventory) do
        if type(item) == "table" then
            for _, checkItem in pairs(item) do
                if itemData.name == checkItem and itemData.count > 0 then
                    return true
                end
            end
        else
            if itemData.name == item and itemData.count > 0 then
                return true
            end
        end
    end
    return false
end