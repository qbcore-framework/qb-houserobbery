local QBCore = exports['qb-core']:GetCoreObject()
local inside = false
local currentHouse = nil
local closestHouse
local inRange
local IsLockpicking = false
local houseObj = {}
local POIOffsets = nil
local usingAdvanced = false
local requiredItemsShowed = false
local requiredItems = {}
local CurrentCops = 0
local openingDoor = false
local SucceededAttempts = 0
local NeededAttempts = 4
local zoneSpawned = false
local frontzoneSpawned = false
local lootlocationsSpawned = false

--- For Debugging PolyZones, highlight this text: debugPoly = false and change it to: debugPoly = true

-- Functions

local function DrawText3Ds(x, y, z, text)
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

local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

local function openHouseAnim()
    loadAnimDict("anim@heists@keycard@")
    TaskPlayAnim( PlayerPedId(), "anim@heists@keycard@", "exit", 5.0, 1.0, -1, 16, 0, 0, 0, 0 )
    Wait(400)
    ClearPedTasks(PlayerPedId())
end

local function enterRobberyHouse(house)
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "houses_door_open", 0.25)
    openHouseAnim()
    Wait(250)
    local coords = { x = Config.Houses[house]["coords"]["x"], y = Config.Houses[house]["coords"]["y"], z= Config.Houses[house]["coords"]["z"] - Config.MinZOffset}
    local data
    if Config.Houses[house]["tier"] == 1 then
        data = exports['qb-interior']:CreateHouseRobbery(coords)
    end
    Wait(100)
    houseObj = data[1]
    POIOffsets = data[2]
    inside = true
    currentHouse = house
    Wait(500)
    TriggerEvent('qb-weathersync:client:DisableSync')
    print('Player has entered house: '..house)
end

local function leaveRobberyHouse(house)
    local ped = PlayerPedId()
    TriggerServerEvent("InteractSound_SV:PlayOnSource", "houses_door_open", 0.25)
    openHouseAnim()
    Wait(250)
    DoScreenFadeOut(250)
    Wait(500)
    exports['qb-interior']:DespawnInterior(houseObj, function()
        TriggerEvent('qb-weathersync:client:EnableSync')
        Wait(250)
        DoScreenFadeIn(250)
        SetEntityCoords(ped, Config.Houses[house]["coords"]["x"], Config.Houses[house]["coords"]["y"], Config.Houses[house]["coords"]["z"] + 0.5)
        SetEntityHeading(ped, Config.Houses[house]["coords"]["h"])
        inside = false
        currentHouse = nil
    end)
end

local function PoliceCall()
    local chance = 75
    if GetClockHours() >= 1 and GetClockHours() <= 6 then
        chance = 25
    end
    if math.random(1, 100) <= chance then
        TriggerServerEvent('police:server:policeAlert', 'Attempted House Robbery')
    end
end

local function lockpickFinish(success)
    if success then
        TriggerServerEvent('qb-houserobbery:server:enterHouse', closestHouse)
        deleteZone("house-front-door", "because player entered robbery target home.")
        QBCore.Functions.Notify(Lang:t("success.worked"), "success", 2500)
    else
        if usingAdvanced then
            local itemInfo = QBCore.Shared.Items["advancedlockpick"]
            if math.random(1, 100) < 20 then
                TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
                TriggerEvent('inventory:client:ItemBox', itemInfo, "remove")
            end
        else
            local itemInfo = QBCore.Shared.Items["advancedlockpick"]
            if math.random(1, 100) < 40 then
                TriggerServerEvent("QBCore:Server:RemoveItem", "advancedlockpick", 1)
                TriggerEvent('inventory:client:ItemBox', itemInfo, "remove")
            end
        end


        QBCore.Functions.Notify(Lang:t("error.didnt_work"), "error", 2500)
    end
end

local function LockpickDoorAnim()
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

local function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true
    if model == `mp_m_freemode_01` then
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

local function searchCabin(cabin)
    local ped = PlayerPedId()
    local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
    if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
    end
    LockpickDoorAnim()
    TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, true)
    FreezeEntityPosition(ped, true)
    IsLockpicking = true
    Skillbar.Start({
        duration = math.random(350, 1500),
        pos = math.random(10, 30),
        width = math.random(10, 20),
    }, function()
        if SucceededAttempts + 1 >= NeededAttempts then
            openingDoor = false
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('qb-houserobbery:server:searchCabin', cabin, currentHouse)
            Config.Houses[currentHouse]["furniture"][cabin]["searched"] = true
            TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
            SucceededAttempts = 0
            FreezeEntityPosition(ped, false)
            SetTimeout(500, function()
                IsLockpicking = false
            end)
        else
            Skillbar.Repeat({
                duration = math.random(700, 1250),
                pos = math.random(10, 40),
                width = math.random(10, 13),
            })
            SucceededAttempts = SucceededAttempts + 1
        end
    end, function()
        openingDoor = false
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
        QBCore.Functions.Notify(Lang:t("error.process_cancelled"), "error", 3500)
        SucceededAttempts = 0
        FreezeEntityPosition(ped, false)
        SetTimeout(500, function()
            IsLockpicking = false
        end)
    end)
end

-- Events

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('The resource ' .. resourceName .. ' has been started. Removing Previous Zones...')
    deleteZone("house-exit-door", "because the resource **" .. resourceName .. "** has been started.")
    deleteZone("house-front-door", "because the resource **" .. resourceName .. "** has been started.")
    deleteZone("interior-robberies", "because the resource **" .. resourceName .. "** has been started.")
    
end)
  

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-houserobbery:server:GetHouseConfig', function(HouseConfig)
        Config.Houses = HouseConfig
    end)
end)

RegisterNetEvent('qb-houserobbery:client:ResetHouseState', function(house)
    Config.Houses[house]["opened"] = false
    for _, v in pairs(Config.Houses[house]["furniture"]) do
        v["searched"] = false
    end
end)

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('qb-houserobbery:client:enterHouse', function(house)
    enterRobberyHouse(house)
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

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)

    if Config.LockpickOnUse then
        local hours = GetClockHours()
        if hours >= Config.MinimumTime or hours <= Config.MaximumTime then
            usingAdvanced = isAdvanced
            if usingAdvanced then
                if closestHouse ~= nil then
                    if CurrentCops >= Config.MinimumHouseRobberyPolice then
                        if not Config.Houses[closestHouse]["opened"] then
                            PoliceCall()
                            TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
                            if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
                                local pos = GetEntityCoords(PlayerPedId())
                                TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                            end
                        else
                            QBCore.Functions.Notify(Lang:t("error.door_open"), "error", 3500)
                        end
                    else
                        QBCore.Functions.Notify(Lang:t("error.not_enough_police"), "error", 3500)
                    end
                end
            else
                QBCore.Functions.TriggerCallback('QBCore:HasItem', function(result)
                    if closestHouse ~= nil then
                        if result then
                            if CurrentCops >= Config.MinimumHouseRobberyPolice then
                                if not Config.Houses[closestHouse]["opened"] then
                                    PoliceCall()
                                    TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
                                    if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
                                        local pos = GetEntityCoords(PlayerPedId())
                                        TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                                    end
                                else
                                    QBCore.Functions.Notify(Lang:t("error.door_open"), "error", 3500)
                                end
                            else
                                QBCore.Functions.Notify(Lang:t("error.not_enough_police"), "error", 3500)
                            end
                        else
                            QBCore.Functions.Notify(Lang:t("error.missing_something"), "error", 3500)
                        end
                    end
                end, "screwdriverset")
            end
        end
    end
end)

-- Threads

CreateThread(function()
    Wait(500)
    requiredItems = {
        [1] = {name = QBCore.Shared.Items["advancedlockpick"]["name"], image = QBCore.Shared.Items["advancedlockpick"]["image"]},
        [2] = {name = QBCore.Shared.Items["screwdriverset"]["name"], image = QBCore.Shared.Items["screwdriverset"]["image"]},
    }
    while true do
        inRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        closestHouse = nil
        if QBCore ~= nil then
            local hours = GetClockHours()
            if hours >= Config.MinimumTime or hours <= Config.MaximumTime then
                if not inside then
                    for k, _ in pairs(Config.Houses) do
                        local dist = #(PlayerPos - vector3(Config.Houses[k]["coords"]["x"], Config.Houses[k]["coords"]["y"], Config.Houses[k]["coords"]["z"]))
                        if dist <= 2.5 then
                            closestHouse = k
                            inRange = true
                            if frontzoneSpawned then
                                Wait(1000)
                            else
                                exports['qb-target']:AddCircleZone("house-front-door", vector3(Config.Houses[k]["coords"]["x"], Config.Houses[k]["coords"]["y"], Config.Houses[k]["coords"]["z"]), 1.0, {name = "house-front-door", debugPoly = false, minZ = Config.Houses[k]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[k]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:enter:house", icon = 'fas fa-lock', label = "Enter/Lockpick Front Door"}}, distance = 2.5})
                                frontzoneSpawned = true
                            end  
                        end
                    end
                end
            end
            if inside then Wait(1000) end
            if not inRange then
                if requiredItemsShowed or not Config.ShowRequiredItems then
                    requiredItemsShowed = false
                    TriggerEvent('inventory:client:requiredItems', requiredItems, false)
                end
                Wait(1000)
            else
                if not requiredItemsShowed and Config.ShowRequiredItems then
                    TriggerEvent('inventory:client:requiredItems', requiredItems, true)
                    requiredItemsShowed = true
                end
                Wait(1000)
            end

            if not inRange then
                if frontzoneSpawned then
                    deleteZone("house-front-door", " because player is too far from front door.")
                    frontzoneSpawned = false 
                end
            end
        end
        Wait(5)
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        if inside then
            if #(pos - vector3(Config.Houses[currentHouse]["coords"]["x"] + POIOffsets.exit.x, Config.Houses[currentHouse]["coords"]["y"] + POIOffsets.exit.y, Config.Houses[currentHouse]["coords"]["z"] - Config.MinZOffset + POIOffsets.exit.z)) < 4.5 then
                if zoneSpawned then
                    Wait(1250)
                else
                    exports['qb-target']:AddCircleZone("house-exit-door", vector3(Config.Houses[currentHouse]["coords"]["x"] + POIOffsets.exit.x, Config.Houses[currentHouse]["coords"]["y"] + POIOffsets.exit.y, Config.Houses[currentHouse]["coords"]["z"] - Config.MinZOffset + POIOffsets.exit.z), 1.0, {name = "house-exit-door", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:exit:house", icon = 'fas fa-door-open', label = "Exit Door"}}, distance = 2.5})
                    Wait(100)
                    zoneSpawned = true
                end
            else
                if zoneSpawned then
                    deleteZone("house-exit-door", " because player is too far from door!") 
                    Wait(100)
                    zoneSpawned = false
                end

            end
        end
        if not inside then
            Wait(5000)
        end
        Wait(2500)
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        if inside then
            for k, _ in pairs(Config.Houses[currentHouse]["furniture"]) do
                if #(pos - vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["z"] - Config.MinZOffset)) < 4 then
                    if not Config.Houses[currentHouse]["furniture"][k]["searched"] then
                        if not Config.Houses[currentHouse]["furniture"][k]["isBusy"] then
                            if lootlocationsSpawned then
                                Wait(2500)
                            else
                                -- Spawn Lootable Areas
                                exports['qb-target']:AddCircleZone("house-rob-zone-1", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][1]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][1]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][1]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-1", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][1]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-2", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][2]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][3]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][2]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-2", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][2]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-3", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][3]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][3]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][3]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-3", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][3]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-4", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][4]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][4]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][4]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-4", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][4]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-5", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][5]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][5]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][5]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-5", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][5]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-6", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][6]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][6]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][6]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-6", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][6]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-7", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][7]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][7]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][7]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-7", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][7]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-8", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][8]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][8]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][8]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-8", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][8]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-9", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][9]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][9]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][9]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-9", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon = Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][9]["text"]}}, distance = 2.5})
                                exports['qb-target']:AddCircleZone("house-rob-zone-10", vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][10]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][10]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][10]["coords"]["z"] - Config.MinZOffset), 1.0, {name = "house-rob-zone-10", debugPoly = false, minZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset - 3, maxZ = Config.Houses[currentHouse]["coords"]["z"] + Config.MinZOffset + 4}, {options = {{type = "client", event = "qb-houserobbery:search:furniture", icon =  Config.LootableIcon, label = Config.Houses[currentHouse]["furniture"][10]["text"]}}, distance = 2.5})

                                Wait(100)
                                lootlocationsSpawned = true
                            end
                            if not IsLockpicking then
                                if IsControlJustReleased(0, 38) then
                                    searchCabin(k)
                                end
                            end
                        else
                            DrawText3Ds(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["z"] - Config.MinZOffset, 'Searching..')
                        end
                    else
                        DrawText3Ds(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["z"] - Config.MinZOffset, 'Empty..')
                    end
                end
            end
        else
            if lootlocationsSpawned then
                removeRobZones(" because player left house robbery location!")
            end
        end

        if not inside then
            Wait(5000)
        end
        Wait(3)
    end
end)

RegisterNetEvent('qb-houserobbery:search:furniture', function()
    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    if inside then
        for k, _ in pairs(Config.Houses[currentHouse]["furniture"]) do
            if #(pos - vector3(Config.Houses[currentHouse]["coords"]["x"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["x"], Config.Houses[currentHouse]["coords"]["y"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["y"], Config.Houses[currentHouse]["coords"]["z"] + Config.Houses[currentHouse]["furniture"][k]["coords"]["z"] - Config.MinZOffset)) < 1 then
                if not Config.Houses[currentHouse]["furniture"][k]["searched"] then
                    if not Config.Houses[currentHouse]["furniture"][k]["isBusy"] then
                        if not IsLockpicking then
                            searchCabin(k)
                        end
                    else
                        QBCore.Functions.Notify('Already Searching...', 'error')
                    end
                else
                    QBCore.Functions.Notify("This is empty.", 'error')
                end
            end
        end
    end

    if not inside then
        QBCore.Functions.Notify("You aren't in the house.", 'error')
        Wait(5000)
    end
    Wait(3)

end)

function deleteZone(zonename, reason)
    exports['qb-target']:RemoveZone(zonename)
    print('Removed Zone ** '..zonename..' ** '..reason)
    if zonename == "house-front-door" then
        frontzoneSpawned = false
        print('set '..zonename..' zoneSpawned = false')
    elseif zonename == "house-exit-door" then
        zoneSpawned = false
        print('set '..zonename..' zoneSpawned = false')
    elseif zonenname == "interior-robberies" then
        removeRobZones(" because resource has started.")
    end

end

function removeRobZones(reason)
    exports['qb-target']:RemoveZone("house-rob-zone-1")
    exports['qb-target']:RemoveZone("house-rob-zone-2")
    exports['qb-target']:RemoveZone("house-rob-zone-3")
    exports['qb-target']:RemoveZone("house-rob-zone-4")
    exports['qb-target']:RemoveZone("house-rob-zone-5")
    exports['qb-target']:RemoveZone("house-rob-zone-6")
    exports['qb-target']:RemoveZone("house-rob-zone-7")
    exports['qb-target']:RemoveZone("house-rob-zone-8")
    exports['qb-target']:RemoveZone("house-rob-zone-9")
    exports['qb-target']:RemoveZone("house-rob-zone-10")
    print('Removed Interior Robbery Zones'..reason)
    lootlocationsSpawned = false
end

RegisterNetEvent('qb-houserobbery:enter:house', function()
    if QBCore ~= nil then
        local hours = GetClockHours()
        if hours >= Config.MinimumTime or hours <= Config.MaximumTime then
            if not inside then
                for k, _ in pairs(Config.Houses) do
                    local ped = PlayerPedId()
                    local pos = GetEntityCoords(ped)
                    local dist = #(pos - vector3(Config.Houses[k]["coords"]["x"], Config.Houses[k]["coords"]["y"], Config.Houses[k]["coords"]["z"]))
                    if dist <= 2.5 then
                        closestHouse = k
                        inRange = true
                        if CurrentCops >= Config.MinimumHouseRobberyPolice then
                            if Config.Houses[k]["opened"] then
                                enterRobberyHouse(k)
                                Wait(150)
                                deleteZone("house-front-door", " because player entered robbery target.")
                            else
                                QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
                                    if hasItem then
                                        if Config.MinigameType == "lockpick" then
                                            TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
                                        elseif Config.MinigameType == "skillbar" then
                                            local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
                                            if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
                                                local pos = GetEntityCoords(PlayerPedId())
                                                TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
                                            end
                                            Skillbar.Start({
                                                duration = math.random(333, 4222),
                                                pos = math.random(10, 30),
                                                width = math.random(10, 20),
                                            }, function()
                                                if SucceededAttempts + 1 >= NeededAttempts then
                                                    lockpickFinish(true)
                                                else
                                                    Skillbar.Repeat({
                                                        duration = math.random(700, 1250),
                                                        pos = math.random(10, 40),
                                                        width = math.random(10, 13),
                                                    })
                                                    SucceededAttempts = SucceededAttempts + 1
                                                end
                                            end, function()
                                                lockpickFinish(false)
                                            end)
                                        else
                                            print('There was an error; continuing to normal lockpick...')
                                            TriggerEvent('qb-lockpick:client:openLockpick', lockpickFinish)
                                        end

                                    else
                                        QBCore.Functions.Notify("You can't unlock this with your hands..", 'error')
                                    end

                                end, "advancedlockpick")

                            end
                        end
                        
                    end
                end
            end
        end
        for k, _ in pairs(Config.Houses) do
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local dist = #(pos - vector3(Config.Houses[k]["coords"]["x"], Config.Houses[k]["coords"]["y"], Config.Houses[k]["coords"]["z"]))
            if dist <= 2.5 then
                closestHouse = k
                if inside and frontzoneSpawned then                                 
                    Wait(2000)
                    deleteZone("house-front-door", " because player entered robbery house.")
                    Wait(100)
                    frontzoneSpawned = false 
                    
                elseif dist >= 2.6 and zoneSpawned then
                    deleteZone("house-front-door", " because player entered robbery house.")
                    Wait(100)
                    frontzoneSpawned = false 
                end
                
            end
        end
    end
    Wait(5)

end)

RegisterNetEvent('qb-houserobbery:exit:house', function()
    if inside then
        leaveRobberyHouse(currentHouse)
        Wait(1500)
        deleteZone("house-exit-door", " because player left robbery target.")
    else
        QBCore.Functions.Notify("You're not inside a house!", 'error')
    end

end)

-- Util Command (can be commented out - used for setting new spots in the config)

RegisterCommand('gethroffset', function()
    local coords = GetEntityCoords(PlayerPedId())
    local houseCoords = vector3(
        Config.Houses[currentHouse]["coords"]["x"],
        Config.Houses[currentHouse]["coords"]["y"],
        Config.Houses[currentHouse]["coords"]["z"] - Config.MinZOffset
    )
    if inside then
        local xdist = coords.x - houseCoords.x
        local ydist = coords.y - houseCoords.y
        local zdist = coords.z - houseCoords.z
        print('X: '..xdist)
        print('Y: '..ydist)
        print('Z: '..zdist)
    end
end)
