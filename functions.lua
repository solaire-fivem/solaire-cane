local caneObject = nil
local originalWalkStyle = nil
local isUsingCane = false
local currentCaneItem = nil

--- @return nil
function EquipCane(itemName)
    if IsCaneEquipped() then return end
    
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then return ShowNotification("You can't equip a cane in a vehicle!", "error") end
    if not itemName then return ShowNotification("No cane item specified!", "error") end

    currentCaneItem = itemName
    originalWalkStyle = GetPedMovementClipset(ped)

    if not HasAnimSetLoaded(Config.WalkStyle) then
        RequestAnimSet(Config.WalkStyle)
        while not HasAnimSetLoaded(Config.WalkStyle) do
            Wait(10)
        end
    end
    SetPedMovementClipset(ped, Config.WalkStyle, Config.TransitionSpeed)
    AttachCane()
    isUsingCane = true
    ShowNotification("Cane equipped", "success")

    CreateThread(function()
        local lastStatusCheck = 0
        while IsCaneEquipped() do
            DisableControlAction(0, 24, true)   -- Attack
            DisableControlAction(0, 140, true)  -- Melee Attack Light
            DisableControlAction(0, 141, true)  -- Melee Attack Heavy
            DisableControlAction(0, 142, true)  -- Melee Attack Alternate
            DisableControlAction(0, 21, true)   -- Sprint
            DisableControlAction(0, 22, true)   -- Jump

            if GetGameTimer() - lastStatusCheck > 1000 then
                lastStatusCheck = GetGameTimer()
                if IsPedInAnyVehicle(ped, false) or not HasItem(itemName) then
                    RemoveCane()
                    break
                end
            end

            Wait(5)
        end
    end)
end

--- @return nil
function RemoveCane()
    if not IsCaneEquipped() then return end

    local ped = PlayerPedId()

    if not caneObject then return end
    DeleteObject(caneObject)
    caneObject = nil

    if originalWalkStyle then
        if HasAnimSetLoaded(originalWalkStyle) then
            SetPedMovementClipset(ped, originalWalkStyle, Config.TransitionSpeed)
        else
            ResetPedMovementClipset(ped, Config.TransitionSpeed)
        end
    else
        ResetPedMovementClipset(ped, Config.TransitionSpeed)
    end

    isUsingCane = false
    currentCaneItem = nil
    ShowNotification("Cane unequipped", "primary")
end

--- @return nil
function AttachCane()
    local ped = PlayerPedId()
    
    if Config.Debug then
        print("AttachCane called with currentCaneItem: " .. tostring(currentCaneItem))
    end
    
    if currentCaneItem == "cane" then
        local model = GetHashKey("prop_cs_walking_stick")
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(10)
        end
        caneObject = CreateObject(model, 0.0, 0.0, 0.0, true, true, true)
        AttachEntityToEntity(
            caneObject,
            ped,
            GetPedBoneIndex(ped, Config.AttachmentBone),
            0.13,   -- x
            0.0,    -- y
            -0.02,  -- z
            0.0,    -- xRotation
            -90.0,  -- yRotation
            -20.0,  -- zRotation
            true, true, false, true, 1, true
        )
        SetModelAsNoLongerNeeded(model)
    elseif currentCaneItem == "walking_stick" then
        local model = GetHashKey("prop_solaire_walking_stick")
        RequestModel(model)
        while not HasModelLoaded(model) do
            Wait(10)
        end
        caneObject = CreateObject(model, 0.0, 0.0, 0.0, true, true, true)
        AttachEntityToEntity(
            caneObject,
            ped,
            GetPedBoneIndex(ped, Config.AttachmentBone),
            0.14,   -- x
            0.05,   -- y
            0.0,    -- z
            0.0,    -- xRotation
            -90.0,  -- yRotation
            160.0,  -- zRotation
            true, true, false, true, 1, true
        )
        SetModelAsNoLongerNeeded(model)
    end
end

--- @return boolean
--- @description Checks if the player is currently using a cane.
function IsCaneEquipped()
	return isUsingCane
end