Config = {}

-- Framework & Notify
Config.Framework = "qb" -- Currently supported frameworks, ["qb", "qbx"]
Config.NotificationSystem = "qb" -- Currently supported notify systems, ["qb", "qbx", "ox_lib", "okok"]

-- Cane settings
Config.CaneItem = "cane"
Config.CaneModel = "prop_cs_walking_stick"
Config.WalkStyle = "move_heist_lester"

-- Animation settings
Config.AttachmentBone = 57005
Config.AttachmentOffset = {
    x = 0.15,
    y = 0.0,
    z = -0.02,
    xRotation = 0.0,
    yRotation = -90.0,
    zRotation = 0.0
}
Config.TransitionSpeed = 0.7 -- The time in seconds it takes to transition between walk styles

-- Miscellaneous
Config.Debug = true -- Enables debug logging in the F8 console