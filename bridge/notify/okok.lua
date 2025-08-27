if Config.NotificationSystem ~= "okok" then return end

if Config.Debug then
    print("Notify: okokNotify")
end

function ShowNotification(message, type)
    local title = "Notification"
    local duration = 5000 -- duration in ms
    exports["okokNotify"]:Alert(title, message, duration, type or "info")
end