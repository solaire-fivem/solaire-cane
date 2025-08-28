if Config.Framework ~= "qbx" then return end

if Config.Debug then
    print("Framework: QBox")
end

--- @return boolean
function HasItem(item)
    local PlayerData = exports.qbx_core:GetPlayerData()
    if not PlayerData or not PlayerData.items then return false end

    for _, itemData in pairs(PlayerData.items) do
        if type(item) == "table" then
            for _, checkItem in pairs(item) do
                if itemData.name == checkItem then
                    return true
                end
            end
        else
            if itemData.name == item then
                return true
            end
        end
    end
    return false
end