Config = {}

-- Framework & Notify
Config.Framework = "qb" -- Currently supported frameworks, ["qb", "qbx", "esx"]
Config.NotificationSystem = "qb" -- Currently supported notify systems, ["qb", "qbx", "esx_notify", "ox_lib", "okok"]

-- Cane settings
Config.CaneItems = {"cane", "walking_stick", "staff", "candy_cane"} -- Cane items if you are adding more canes make sure you update this with the item name
Config.WalkStyle = "move_heist_lester"

-- Animation settings
Config.AttachmentBone = 57005
Config.TransitionSpeed = 0.7 -- The time in seconds it takes to transition between walk styles

-- Miscellaneous
Config.Debug = false -- Enables debug logging in the F8 console