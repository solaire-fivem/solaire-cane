if Config.NotificationSystem ~= "qbx" then return end

if Config.Debug then
    print("Notify: QBox")
end

function ShowNotification(message, type)
    -- Use QBox notification export as per docs
    exports['qbx_core']:Notify(message, type or 'info', 5000)
end