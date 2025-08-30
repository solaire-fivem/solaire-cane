if Config.NotificationSystem ~= "esx_notify" then return end

if Config.Debug then
    print("Notify: esx_notify")
end

function ShowNotification(message, type)
    exports.esx_notify:Notify(type, 3000, message)
end