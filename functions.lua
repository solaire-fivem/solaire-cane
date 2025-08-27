local caneObject = nil
local originalWalkStyle = nil
local isUsingCane = false

--- @return nil
function EquipCane()
    if IsCaneEquipped() then return end
    
    local ped = PlayerPedId()
    if IsPedInAnyVehicle(ped, false) then
        ShowNotification("You can't equip a cane in a vehicle!", "error")
        return
    end
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
                local ped = PlayerPedId()
                lastStatusCheck = GetGameTimer()
                if IsPedInAnyVehicle(ped, false) or not HasItem(Config.CaneItem) then
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
    DetachCane()
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
    ShowNotification("Cane removed", "primary")
end

--- @return nil
function AttachCane()
    local ped = PlayerPedId()
    local model = GetHashKey(Config.CaneModel)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
    caneObject = CreateObject(model, 0.0, 0.0, 0.0, true, true, true)
    AttachEntityToEntity(
        caneObject,
        ped,
        GetPedBoneIndex(ped, Config.AttachmentBone),
        Config.AttachmentOffset.x,
        Config.AttachmentOffset.y,
        Config.AttachmentOffset.z,
        Config.AttachmentOffset.xRotation,
        Config.AttachmentOffset.yRotation,
        Config.AttachmentOffset.zRotation,
        true, true, false, true, 1, true
    )
    SetModelAsNoLongerNeeded(model)
end

--- @return nil
function DetachCane()
    if caneObject then
        DeleteObject(caneObject)
        caneObject = nil
    end
end

--- @return boolean
--- @description Checks if the player is currently using a cane.
function IsCaneEquipped()
	return isUsingCane
end