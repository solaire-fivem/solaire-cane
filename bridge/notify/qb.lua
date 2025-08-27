if Config.NotificationSystem ~= "qb" then return end

local QBCore = exports['qb-core']:GetCoreObject()

if Config.Debug then
    print("Notify: QBCore")
end

function ShowNotification(message, type)
    QBCore.Functions.Notify(message, type or 'primary')
end