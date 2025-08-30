if Config.NotificationSystem ~= "qbx" then return end

if Config.Debug then
    print("Notify: QBox")
end

function ShowNotification(message, type)
    exports.qbx_core:Notify(message, type or 'info', 3000)
end