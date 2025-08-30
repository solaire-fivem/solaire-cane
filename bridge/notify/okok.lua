if Config.NotificationSystem ~= "okok" then return end

if Config.Debug then
    print("Notify: okokNotify")
end

function ShowNotification(message, type)
    exports.okokNotify:Alert("Notification", message, 3000, type)
end