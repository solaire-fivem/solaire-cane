if Config.NotificationSystem ~= "ox_lib" then return end

if Config.Debug then
	print("Notify: ox_lib")
end

function ShowNotification(message, type)
	-- ox_lib notify types: "success", "info", "error"
	exports["ox_lib"]:notify({
		description = message,
		type = type or "info"
	})
end
