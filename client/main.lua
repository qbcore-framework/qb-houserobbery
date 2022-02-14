QBCore = exports['qb-core']:GetCoreObject()

-- Code
local inside = false
local currentHouse = nil
local closestHouse
local inRange
local lockpicking = false
local houseObj = {}
local POIOffsets = nil
local usingAdvanced = false
local openingDoor = false
-- Prop Item Shit
local teleprop = nil
local artprop = nil
local hifiprop = nil
local laptopprop = nil
local microwaveprop = nil
CurrentCops = 0

-- // Handlers \\ --
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-houserobbery:server:GetHouseConfig', function(HouseConfig)
        Config.Houses = HouseConfig
    end)
end)
RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)
-- // Functions \\ --
function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
function LoadAnim(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end
function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Wait(1)
    end
end
function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end
function enterRobberyHouse(house)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "houses_door_open", 0.25)
    openHouseAnim()
    Wait(250)
    local coords = { x = Config.Houses[house].coords.x, y = Config.Houses[house].coords.y, z= Config.Houses[house].coords.z - Config.MinZOffset}
    if Config.Houses[house]["tier"] == 1 then
        data = exports['qb-interior']:CreateTier1HouseFurnished(coords)
    elseif Config.Houses[house]["tier"] == 2 then
        data = exports['qb-interior']:HouseRobTierTwo(coords)
    end
    Wait(100)
    houseObj = data[1]
    POIOffsets = data[2]
    inside = true
    currentHouse = house
    Wait(500)
    SetRainFxIntensity(0.0)
    Wait(100)
    SetWeatherTypePersist('EXTRASUNNY')
    SetWeatherTypeNow('EXTRASUNNY')
    SetWeatherTypeNowPersist('EXTRASUNNY')
    NetworkOverrideClockTime(23, 0, 0)
end
function leaveRobberyHouse(house)
    local ped = PlayerPedId()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "houses_door_open", 0.25)
    openHouseAnim()
    Wait(250)
    DoScreenFadeOut(250)
    Wait(500)
    exports['qb-interior']:DespawnInterior(houseObj, function()
        Wait(250)
        DoScreenFadeIn(250)
        SetEntityCoords(ped, vector3(Config.Houses[house].coords.x, Config.Houses[house].coords.y, Config.Houses[house].coords.z))
        SetEntityHeading(ped, Config.Houses[house].coords.w)
        inside = false
        currentHouse = nil
    end)
    Wait(1000)
    TriggerEvent('qb-moneyman:client:boxanim')
end
function openHouseAnim()
    loadAnimDict("anim@heists@keycard@") 
    TaskPlayAnim( PlayerPedId(), "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0 )
    Wait(400)
    ClearPedTasks(PlayerPedId())
end
function lockpickMainDoor()
	local seconds = math.random(6,10)
	local circles = math.random(1,3)
	local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
	if success then
        TriggerServerEvent('qb-houserobbery:server:enterHouse', closestHouse)
        -- QBCore.Functions.Notify('You did it!', 'success', 2500)
        QBCore.Functions.Notify(Lang:t("success.worked"), "success", 2500)
            local itemInfo = QBCore.Shared.Items["advancedlockpick"]
            if math.random(1, 100) < 20 then
                TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
                TriggerEvent('inventory:client:ItemBox', itemInfo, "remove")
            end
	else
        if usingAdvanced then
            local itemInfo = QBCore.Shared.Items["advancedlockpick"]
            if math.random(1, 100) < 20 then
                TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
                TriggerEvent('inventory:client:ItemBox', itemInfo, "remove")
            end
        else
            local itemInfo = QBCore.Shared.Items["lockpick"]
            if math.random(1, 100) < 40 then
                TriggerServerEvent("QBCore:Server:RemoveItem", "lockpick", 1)
                TriggerEvent('inventory:client:ItemBox', itemInfo, "remove")
            end
		end
        QBCore.Functions.Notify(Lang:t("error.didnt_work"), "error", 2500)
		-- QBCore.Functions.Notify('It didn\'t work..', 'error', 2500)
	end
end
function searchCabin(cabin)
    local ped = PlayerPedId()

    if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    end
	
    LockpickDoorAnim(lockpickTime)
    TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, true)

    FreezeEntityPosition(ped, true)
	
    IsLockpicking = true
	
	local seconds = math.random(6,10)
	local circles = math.random(3,5)
	local success = exports['qb-lock']:StartLockPickCircle(circles, seconds, success)
	if success then
		-- Finish
		openingDoor = false
		ClearPedTasks(PlayerPedId())
		TriggerServerEvent('qb-houserobbery:server:searchCabin', cabin, currentHouse)
		Config.Houses[currentHouse]["furniture"][cabin]["searched"] = true
		TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
		SucceededAttempts = 0
		FreezeEntityPosition(ped, false)
		SetTimeout(500, function()
			IsLockpicking = false
			TriggerServerEvent('qb-robbery:server:succesHeist', 1)
			TriggerEvent('qb-robbery:finish')
		end)
	else
        -- Fail
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
        QBCore.Functions.Notify(Lang:t("error.process_cancelled"), "error", 3500)
        -- QBCore.Functions.Notify("Process Cancelled..", "error")
        SucceededAttempts = 0
        FreezeEntityPosition(ped, false)
        SetTimeout(500, function()
            IsLockpicking = false
        end)
	end
	
end
function StealPropItem(prop, currentHouse)
    if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    end

    local StealObject = GetClosestObjectOfType(Config.Houses[currentHouse]['propitem'][prop]['coords']['x'], Config.Houses[currentHouse]['propitem'][prop]['coords']['y'], Config.Houses[currentHouse]['propitem'][prop]['coords']['z'], 5.0, GetHashKey(Config.Houses[currentHouse]['propitem'][prop]['PropName']), false, false, false)
    
    SetEntityAsMissionEntity(StealObject, true, true)

    TriggerServerEvent('qb-houserobbery:server:recieve:extra', prop, currentHouse)
    
    DeleteEntity(StealObject)
end
function LockpickDoorAnim(time)
    openingDoor = true
    CreateThread(function()
        while true do
            if openingDoor then
                TaskPlayAnim(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 3.0, 3.0, -1, 16, 0, 0, 0, 0)
            else
                StopAnimTask(PlayerPedId(), "veh@break_in@0h@p_m_one@", "low_force_entry_ds", 1.0)
                break
            end
            Wait(1000)
        end
    end)
end
function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true
    if model == GetHashKey("mp_m_freemode_01") then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end
function BoxAnim()
    local ped = PlayerPedId()
    LoadAnim('anim@heists@box_carry@')
    TaskPlayAnim(ped, 'anim@heists@box_carry@', 'idle', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
end
-- Replace for 3D text if I can get it to work!
function showInteraction(text , type)
    SendNUIMessage({
        type = "open",
        text = text,
        color = type,
    })
end
function hideInteraction()
    SendNUIMessage({
        type = "close",
    })
end
--// Threads \\ --
CreateThread(function() -- Press "E" to Enter
    Wait(500)
    while true do
        inRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        closestHouse = nil
        if QBCore ~= nil then
            local hours = GetClockHours()
            if hours >= Config.MinimumTime or hours <= Config.MaximumTime then
                if not inside then
                    for k, v in pairs(Config.Houses) do
                        local housepos = vector3(Config.Houses[k].coords.x, Config.Houses[k].coords.y, Config.Houses[k].coords.z)
                        local dist = #(PlayerPos - housepos)
                        if dist <= 1.5 then
                            closestHouse = k
                            inRange = true
                            if CurrentCops >= Config.MinimumHouseRobberyPolice then
                                if Config.Houses[k]["opened"] then
                                    DrawText3Ds(Config.Houses[k].coords.x, Config.Houses[k].coords.y, Config.Houses[k].coords.z, '~g~E~w~ - To Enter')
                                    if IsControlJustPressed(0, 38) then
                                        enterRobberyHouse(k)
                                    end
                                end
                            end
                        end
                    end
                end
            end
            if inside then
                Wait(1000)
            end
            if not inRange then
                Wait(1000)
            end
        end
        Wait(5)
    end
end)
CreateThread(function() -- Press "E" to Leave
    while true do

        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        if inside then
            if #(pos - vector3(Config.Houses[currentHouse].coords.x + POIOffsets.exit.x, Config.Houses[currentHouse].coords.y + POIOffsets.exit.y, Config.Houses[currentHouse].coords.z - Config.MinZOffset + POIOffsets.exit.z)) < 1.5 then
                DrawText3Ds(Config.Houses[currentHouse].coords.x + POIOffsets.exit.x, Config.Houses[currentHouse].coords.y + POIOffsets.exit.y, Config.Houses[currentHouse].coords.z - Config.MinZOffset + POIOffsets.exit.z, '~g~E~w~ - To leave home')
                if IsControlJustPressed(0, 38) then
                    leaveRobberyHouse(currentHouse)
                end
            end
        end

        if not inside then 
            Wait(5000)
        end

        Wait(3)
    end
end)
CreateThread(function() -- House Robbery Cabinets
    for currentHouse, _ in pairs(Config.Houses) do
        for k,v in pairs(Config.Houses[currentHouse]['furniture']) do
            exports['qb-target']:AddBoxZone('HouseCabinet'..math.random(1,2000), vector3(Config.Houses[currentHouse]['furniture'][k]['coords'].x, Config.Houses[currentHouse]['furniture'][k]['coords'].y, Config.Houses[currentHouse]['furniture'][k]['coords'].z), 1.50, 2.00, {
                name = 'HouseCabinet'..math.random(1,2000), 
                heading = Config.Houses[currentHouse]['furniture'][k]['heading'],
                debugPoly = Config.DebugPoly,
                minZ = Config.Houses[currentHouse]['furniture'][k]['coords'].z - 1,
                maxZ = Config.Houses[currentHouse]['furniture'][k]['coords'].z + 1,
                }, {
                options = {
                    { 
                        type = 'client',
                        event = 'houserobbery:cabinet',
                        icon = 'fas fa-magnifying-glass',
                        label = 'Search Cabinet',
                    }
                },
                distance = 1.5,
            })
        end
    end
end)
CreateThread(function() -- House Robbery Props
    for currentHouse, _ in pairs(Config.Houses) do
        for k,v in pairs(Config.Houses[currentHouse]['propitem']) do
            exports['qb-target']:AddBoxZone('HouseProp'..math.random(1,2000), vector3(Config.Houses[currentHouse]['propitem'][k]['coords'].x, Config.Houses[currentHouse]['propitem'][k]['coords'].y, Config.Houses[currentHouse]['propitem'][k]['coords'].z), Config.Houses[currentHouse]['propitem'][k]['boxx'], Config.Houses[currentHouse]['propitem'][k]['boxy'], {
                name = 'HouseProp'..math.random(1,2000), 
                heading = Config.Houses[currentHouse]['propitem'][k]['heading'],
                debugPoly = Config.DebugPoly,
                minZ = Config.Houses[currentHouse]['propitem'][k]['coords'].z - 1,
                maxZ = Config.Houses[currentHouse]['propitem'][k]['coords'].z + 1,
                }, {
                options = {
                    { 
                        type = 'client',
                        event = 'houserobbery:takeprop',
                        icon = 'fas fa-box',
                        label = 'Grab Object',
                    }
                },
                distance = 1.5,
            })
        end
    end
end)

CreateThread(function()
    -- Item Name Check
    while true do
        QBCore.Functions.TriggerCallback('qb-houserobbery:server:artitem', function(art)
            local player = PlayerPedId()
            if art then
                if artprop == nil then
                    artprop = CreateObject(GetHashKey("hei_prop_hei_bust_01"), 0, 0, 0, true, true, true) -- creates object
                    AttachEntityToEntity(artprop, player, GetPedBoneIndex(player, 60309), 0.050, 0.08, 0.255, -50.0, 290.0, 0.0, true, false, true, true, 0, true) -- object is attached to right hand
                    BoxAnim()
                end
            else
                if artprop ~= nil then
                    DeleteEntity(artprop) -- deletes object
                    artprop = nil
                    ClearPedTasks(player)
                end
            end
        end)
    Wait(2500)
    end
end)
CreateThread(function()
    -- Item Name Check
    while true do
        QBCore.Functions.TriggerCallback('qb-houserobbery:server:teleitem', function(tele)
            local player = PlayerPedId()
            if tele then
                if teleprop == nil then
                    teleprop = CreateObject(GetHashKey("prop_tv_flat_02b"), 0, 0, 0, true, true, true) -- creates object
                    AttachEntityToEntity(teleprop, player, GetPedBoneIndex(player, 60309), 0.130, 0.08, 0.255, -130.0, 105.0, 0.0, true, false, true, true, 0, true) -- object is attached to right hand
                    BoxAnim()
                end
            else
                if teleprop ~= nil then
                    DeleteEntity(teleprop) -- deletes object
                    teleprop = nil
                    ClearPedTasks(player)
                end
            end
        end)
    Wait(2500)
    end
end)
CreateThread(function()
    -- Item Name Check
    while true do
        QBCore.Functions.TriggerCallback('qb-houserobbery:server:hifiitem', function(hifi)
            local player = PlayerPedId()
            if hifi then
                if hifiprop == nil then
                    hifiprop = CreateObject(GetHashKey("prop_hifi_01"), 0, 0, 0, true, true, true) -- creates object
                    AttachEntityToEntity(hifiprop, player, GetPedBoneIndex(player, 60309), 0.025, 0.08, 0.255, -130.0, 105.0, 0.0, true, false, true, true, 0, true) -- object is attached to right hand
                    BoxAnim()
                end
            else
                if hifiprop ~= nil then
                    DeleteEntity(hifiprop) -- deletes object
                    hifiprop = nil
                    ClearPedTasks(player)
                end
            end
        end)
    Wait(2500)
    end
end)
CreateThread(function()
    -- Item Name Check
    while true do
        QBCore.Functions.TriggerCallback('qb-houserobbery:server:laptopitem', function(laptop)
            local player = PlayerPedId()
            if laptop then
                if laptopprop == nil then
                    laptopprop = CreateObject(GetHashKey("prop_laptop_01a"), 0, 0, 0, true, true, true) -- creates object
                    AttachEntityToEntity(laptopprop, player, GetPedBoneIndex(player, 60309), 0.075, -0.10, 0.255, -130.0, 105.0, 0.0, true, false, true, true, 0, true) -- object is attached to right hand
                    BoxAnim()
                end
            else
                if laptopprop ~= nil then
                    DeleteEntity(laptopprop) -- deletes object
                    laptopprop = nil
                    ClearPedTasks(player)
                end
            end
        end)
    Wait(2500)
    end
end)
CreateThread(function()
    -- Item Name Check
    while true do
        QBCore.Functions.TriggerCallback('qb-houserobbery:server:microwaveitem', function(microwave)
            local player = PlayerPedId()
            if microwave then
                if microwaveprop == nil then
                    microwaveprop = CreateObject(GetHashKey("prop_micro_02"), 0, 0, 0, true, true, true) -- creates object
                    AttachEntityToEntity(microwaveprop, player, GetPedBoneIndex(player, 60309), 0.030, 0.080, 0.255, -130.0, 110.0, 0.0, true, false, true, true, 0, true) -- object is attached to right hand
                    BoxAnim()
                end
            else
                if microwaveprop ~= nil then
                    DeleteEntity(microwaveprop) -- deletes object
                    microwaveprop = nil
                    ClearPedTasks(player)
                end
            end
        end)
    Wait(2500)
    end
end)

-- // Events \\ --
RegisterNetEvent("houserobbery:cabinet", function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local dist = 2
    for k, v in pairs(Config.Houses[currentHouse]["furniture"]) do
        if #(pos - vector3(Config.Houses[currentHouse]["furniture"][k]["coords"]["x"], Config.Houses[currentHouse]["furniture"][k]["coords"]["y"], Config.Houses[currentHouse]["furniture"][k]["coords"]["z"])) < 2.5 then
                if not Config.Houses[currentHouse]["furniture"][k]["searched"] then
                    if not Config.Houses[currentHouse]["furniture"][k]["isBusy"] then
                    if not IsLockpicking then
                        searchCabin(k)
                    end
                end
            end
        end
    end
end)
RegisterNetEvent("houserobbery:takeprop", function()
	local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)
    local dist = 2
        for k, v in pairs(Config.Houses[currentHouse]["propitem"]) do
            if #(pos - vector3(Config.Houses[currentHouse]["propitem"][k]["coords"]["x"], Config.Houses[currentHouse]["propitem"][k]["coords"]["y"], Config.Houses[currentHouse]["propitem"][k]["coords"]["z"])) < 2.0 then
                if not Config.Houses[currentHouse]["propitem"][k]["stolen"] then
                    if not IsLockpicking then
                        QBCore.Functions.Progressbar("taking_object", "Taking Object", math.random(5000,10000), false, true, {
                            disableMovement = false,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                            animDict = "random@train_tracks",
                            anim = "idle_e",
                            flags = 49,
                        }, {}, {}, function() -- Done
                            StealPropItem(k, currentHouse)
                        end, function() -- Cancel
                            QBCore.Functions.Notify(Lang:t("error.didnt_work"), "error", 2500)
                        end)
                    end
                end
            else
                -- QBCore.Functions.Notify("Not Close Enough", "error", 5000)
			end
        end
		if not inside then 
            Wait(5000)
        end
	Wait(3)
end)
RegisterNetEvent('qb-houserobbery:client:set:extra:state', function(currentHouse, prop, bool)
    Config.Houses[currentHouse]['propitem'][prop]['stolen'] = bool
end)
RegisterNetEvent('qb-houserobbery:client:ResetHouseState', function(house)
    Config.Houses[house]["opened"] = false
    for k, v in pairs(Config.Houses[house]["furniture"]) do
        v["searched"] = false
    end
    if Config.Houses[house]["propitem"] ~= nil then
        for k, v in pairs(Config.Houses[house]["propitem"]) do
            v['stolen'] = false
        end
    end
end)
RegisterNetEvent('qb-houserobbery:client:enterHouse', function(house)
    enterRobberyHouse(house)
end)
RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    local hours = GetClockHours()
    if hours >= Config.MinimumTime or hours <= Config.MaximumTime then
        usingAdvanced = isAdvanced
        if usingAdvanced then
            if closestHouse ~= nil then
                if CurrentCops >= Config.MinimumHouseRobberyPolice then
                    if not Config.Houses[closestHouse]["opened"] then
                        TriggerEvent("qb-dispatch:houserobbery")
                        lockpickMainDoor()
                        if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
                            local pos = GetEntityCoords(PlayerPedId())
                            TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                        end
                    else
                        QBCore.Functions.Notify(Lang:t("error.door_open"), "error", 3500)
                        -- QBCore.Functions.Notify('Door is already open..', 'error', 3500)
                    end
                else
                    QBCore.Functions.Notify(Lang:t("error.not_enough_police"), "error", 3500)
                    -- QBCore.Functions.Notify('Not enough cops..', 'error', 3500)
                end
            end
        else
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
                if closestHouse ~= nil then
                    if result then
                        if CurrentCops >= Config.MinimumHouseRobberyPolice then
                            if not Config.Houses[closestHouse]["opened"] then
                                TriggerEvent("qb-dispatch:houserobbery")
                                lockpickMainDoor()
                                if math.random(1, 100) <= 35 and not IsWearingHandshoes() then
                                    local pos = GetEntityCoords(PlayerPedId())
                                    TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                                end
                            else
                                QBCore.Functions.Notify(Lang:t("error.door_open"), "error", 3500)
                                -- QBCore.Functions.Notify('Door is already open..', 'error', 3500)
                            end
                        else
                            QBCore.Functions.Notify(Lang:t("error.not_enough_police"), "error", 3500)
                            -- QBCore.Functions.Notify('Not enough cops..', 'error', 3500)
                        end
                    else
                        QBCore.Functions.Notify(Lang:t("error.missing_something"), "error", 3500)
                        -- QBCore.Functions.Notify('It looks like you\'re missing something...', 'error', 3500)
                    end
                end
            end, "screwdriverset")
        end
    end
end)
RegisterNetEvent('qb-houserobbery:client:setHouseState', function(house, state)
    Config.Houses[house]["opened"] = state
end)
RegisterNetEvent('qb-houserobbery:client:setCabinState', function(house, cabin, state)
    Config.Houses[house]["furniture"][cabin]["searched"] = state
end)
RegisterNetEvent('qb-houserobbery:client:SetBusyState', function(cabin, house, bool)
    Config.Houses[house]["furniture"][cabin]["isBusy"] = bool
end)
RegisterNetEvent('qb-moneyman:client:boxanim', function() -- For restarting the animation when leaving a house etc...
    local player = PlayerPedId()
    QBCore.Functions.TriggerCallback('qb-moneyman:server:artitem', function(art)
        QBCore.Functions.TriggerCallback('qb-moneyman:server:teleitem', function(tele)
            QBCore.Functions.TriggerCallback('qb-moneyman:server:hifiitem', function(hifi)
                QBCore.Functions.TriggerCallback('qb-moneyman:server:laptopitem', function(laptop)
                    QBCore.Functions.TriggerCallback('qb-moneyman:server:microwaveitem', function(microwave)
                        if art or tele or hifi or laptop or microwave then
                            BoxAnim()
                        end
                    end)
                end)
            end)
        end)
    end)
end)

RegisterCommand('lockhouse', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if PlayerData.job.name == 'police' or PlayerData.job.name == 'sast' or PlayerData.job.name == 'bcso' then
            TriggerServerEvent('qb-houserobbery:server:lockHouse', closestHouse)
        else
            QBCore.Functions.Notify("Your not a Law Enforcement Officer!", "error")
        end
    end)
end, false)