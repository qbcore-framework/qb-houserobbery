local QBCore = exports['qb-core']:GetCoreObject()
local inside = false
local currentHouse = nil
local closestHouse
local inRange
local IsLockpicking = false
local houseObj = {}
local POIOffsets = nil
local usingAdvanced = false
local CurrentCops = 0

-- Functions

local function DrawText3Ds(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    BeginTextCommandDisplayText('STRING')
    SetTextCentre(true)
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(x, y, z, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local function loadAnimDict(dict)
    RequestAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do Wait(5) end
end

local function openHouseAnim()
    loadAnimDict('anim@heists@keycard@')
    TaskPlayAnim(PlayerPedId(), 'anim@heists@keycard@', 'exit', 5.0, 1.0, -1, 16, 0, 0, 0, 0)
    Wait(400)
    ClearPedTasks(PlayerPedId())
end

local function enterRobberyHouse(house)
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'houses_door_open', 0.25)
    openHouseAnim()
    Wait(250)
    local coords = { x = Config.Houses[house].coords.x, y = Config.Houses[house].coords.y, z = Config.Houses[house].coords.z - Config.MinZOffset }
    local data = exports['qb-interior']:CreateHouseRobbery(coords)
    if not data then return end

    houseObj = data[1]
    POIOffsets = data[2]
    inside = true
    currentHouse = house
    Wait(500)
    TriggerEvent('qb-weathersync:client:DisableSync')
end

local function leaveRobberyHouse(house)
    local ped = PlayerPedId()
    TriggerServerEvent('InteractSound_SV:PlayOnSource', 'houses_door_open', 0.25)
    openHouseAnim()
    Wait(250)
    DoScreenFadeOut(250)
    Wait(500)
    exports['qb-interior']:DespawnInterior(houseObj, function()
        TriggerEvent('qb-weathersync:client:EnableSync')
        Wait(250)
        DoScreenFadeIn(250)
        SetEntityCoords(ped, Config.Houses[house]['coords']['x'], Config.Houses[house]['coords']['y'], Config.Houses[house]['coords']['z'] + 0.5)
        SetEntityHeading(ped, Config.Houses[house]['coords']['h'])
        inside = false
        currentHouse = nil
    end)
end

local function alertCops()
    if math.random(1, 100) < Config.ChanceToAlertPolice then
        TriggerServerEvent('police:server:policeAlert', Lang:t('info.palert'))
    end
end

local function searchCabin(cabin)
    local ped = PlayerPedId()
    if math.random(1, 100) <= 85 and not QBCore.Functions.IsWearingGloves() then
        local pos = GetEntityCoords(PlayerPedId())
        TriggerServerEvent('evidence:server:CreateFingerDrop', pos)
    end

    loadAnimDict('creatures@rottweiler@tricks@')
    TaskPlayAnim(PlayerPedId(), 'creatures@rottweiler@tricks@', 'petting_franklin', 8.0, 8.0, -1, 17, 0, false, false, false)

    TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, true)
    FreezeEntityPosition(ped, true)
    IsLockpicking = true
    local success = exports['qb-minigames']:Skillbar()
    if success then
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('qb-houserobbery:server:searchFurniture', cabin, currentHouse)
        Config.Houses[currentHouse]['furniture'][cabin]['searched'] = true
        TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
        FreezeEntityPosition(ped, false)
        IsLockpicking = false
    else
        ClearPedTasks(PlayerPedId())
        TriggerServerEvent('qb-houserobbery:server:SetBusyState', cabin, currentHouse, false)
        QBCore.Functions.Notify(Lang:t('error.process_cancelled'), 'error', 3500)
        FreezeEntityPosition(ped, false)
        IsLockpicking = false
    end
end

-- Events

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.TriggerCallback('qb-houserobbery:server:GetHouseConfig', function(HouseConfig)
        Config.Houses = HouseConfig
    end)
end)

RegisterNetEvent('qb-houserobbery:client:ResetHouseState', function(house)
    Config.Houses[house]['opened'] = false
    for _, v in pairs(Config.Houses[house]['furniture']) do
        v['searched'] = false
    end
end)

RegisterNetEvent('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('qb-houserobbery:client:enterHouse', function(house)
    enterRobberyHouse(house)
end)

RegisterNetEvent('qb-houserobbery:client:setHouseState', function(house, state)
    Config.Houses[house]['opened'] = state
end)

RegisterNetEvent('qb-houserobbery:client:setCabinState', function(house, cabin, state)
    Config.Houses[house]['furniture'][cabin]['searched'] = state
end)

RegisterNetEvent('qb-houserobbery:client:SetBusyState', function(cabin, house, bool)
    Config.Houses[house]['furniture'][cabin]['isBusy'] = bool
end)

RegisterNetEvent('lockpicks:UseLockpick', function(isAdvanced)
    if Config.UseClockHours then
        if GetClockHours() < Config.MinimumTime or GetClockHours() > Config.MaximumTime then
            QBCore.Functions.Notify(Lang:t('error.not_allowed_time'), 'error', 3500)
            return
        end
    end

    usingAdvanced = isAdvanced
    if closestHouse ~= nil then
        if CurrentCops >= Config.PoliceOnDutyRequired then
            if not Config.Houses[closestHouse]['opened'] then
                if not usingAdvanced then
                    if Config.RequireScrewdriver and not QBCore.Functions.HasItem('screwdriverset') then
                        QBCore.Functions.Notify(Lang:t('error.missing_something'), 'error', 3500)
                        return
                    end
                end

                loadAnimDict('mp_missheist_countrybank@nervous')
                TaskPlayAnim(PlayerPedId(), 'mp_missheist_countrybank@nervous', 'nervous_idle', 8.0, 8.0, -1, 49, 0.0, false, false, false)
                alertCops()
                if usingAdvanced then
                    local success = exports['qb-minigames']:Skillbar()
                    if success then
                        TriggerServerEvent('qb-houserobbery:server:enterHouse', closestHouse)
                        QBCore.Functions.Notify(Lang:t('success.worked'), 'success', 2500)
                    else
                        if math.random(1, 100) <= Config.ChanceToBreakAdvancedLockPick then
                            TriggerServerEvent('qb-houserobbery:server:removeAdvancedLockpick')
                            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['advancedlockpick'], 'remove')
                        end
                        QBCore.Functions.Notify(Lang:t('error.didnt_work'), 'error', 2500)
                    end
                else
                    local success = exports['qb-minigames']:Skillbar('medium')
                    if success then
                        TriggerServerEvent('qb-houserobbery:server:enterHouse', closestHouse)
                        QBCore.Functions.Notify(Lang:t('success.worked'), 'success', 2500)
                    else
                        if math.random(1, 100) <= Config.ChanceToBreakLockPick then
                            TriggerServerEvent('qb-houserobbery:server:removeLockpick')
                            TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items['lockpick'], 'remove')
                        end
                        QBCore.Functions.Notify(Lang:t('error.didnt_work'), 'error', 2500)
                    end
                end
            else
                QBCore.Functions.Notify(Lang:t('error.door_open'), 'error', 3500)
            end
        else
            QBCore.Functions.Notify(Lang:t('error.not_enough_police'), 'error', 3500)
        end
    end
end)

-- Threads

CreateThread(function()
    Wait(500)
    local requiredItems = {
        [1] = { name = QBCore.Shared.Items['advancedlockpick']['name'], image = QBCore.Shared.Items['advancedlockpick']['image'] },
        [2] = { name = QBCore.Shared.Items['screwdriverset']['name'], image = QBCore.Shared.Items['screwdriverset']['image'] },
    }
    local requiredItemsShowed = false
    while true do
        inRange = false
        local PlayerPed = PlayerPedId()
        local PlayerPos = GetEntityCoords(PlayerPed)
        closestHouse = nil

        if Config.UseClockHours then
            if GetClockHours() < Config.MinimumTime or GetClockHours() > Config.MaximumTime then
                QBCore.Functions.Notify(Lang:t('error.not_allowed_time'), 'error', 3500)
                return
            end
        end

        if not inside then
            for k, _ in pairs(Config.Houses) do
                local dist = #(PlayerPos - vector3(Config.Houses[k]['coords']['x'], Config.Houses[k]['coords']['y'], Config.Houses[k]['coords']['z']))
                if dist <= 1.5 then
                    closestHouse = k
                    inRange = true
                    if CurrentCops >= Config.PoliceOnDutyRequired then
                        if Config.Houses[k]['opened'] then
                            DrawText3Ds(Config.Houses[k]['coords']['x'], Config.Houses[k]['coords']['y'], Config.Houses[k]['coords']['z'], Lang:t('info.henter'))
                            if IsControlJustPressed(0, 38) then
                                enterRobberyHouse(k)
                            end
                        else
                            if not requiredItemsShowed then
                                requiredItemsShowed = true
                                TriggerEvent('inventory:client:requiredItems', requiredItems, true)
                            end
                        end
                    end
                end
            end
        end
        if inside then Wait(1000) end
        if not inRange then
            if requiredItemsShowed then
                requiredItemsShowed = false
                TriggerEvent('inventory:client:requiredItems', requiredItems, false)
            end
            Wait(1000)
        end
        Wait(1)
    end
end)

CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        if inside then
            if #(pos - vector3(Config.Houses[currentHouse]['coords']['x'] + POIOffsets.exit.x, Config.Houses[currentHouse]['coords']['y'] + POIOffsets.exit.y, Config.Houses[currentHouse]['coords']['z'] - Config.MinZOffset + POIOffsets.exit.z)) < 1.5 then
                DrawText3Ds(Config.Houses[currentHouse]['coords']['x'] + POIOffsets.exit.x, Config.Houses[currentHouse]['coords']['y'] + POIOffsets.exit.y, Config.Houses[currentHouse]['coords']['z'] - Config.MinZOffset + POIOffsets.exit.z, Lang:t('info.hleave'))
                if IsControlJustPressed(0, 38) then
                    leaveRobberyHouse(currentHouse)
                end
            end

            for k, _ in pairs(Config.Houses[currentHouse]['furniture']) do
                if #(pos - vector3(Config.Houses[currentHouse]['coords']['x'] + Config.Houses[currentHouse]['furniture'][k]['coords']['x'], Config.Houses[currentHouse]['coords']['y'] + Config.Houses[currentHouse]['furniture'][k]['coords']['y'], Config.Houses[currentHouse]['coords']['z'] + Config.Houses[currentHouse]['furniture'][k]['coords']['z'] - Config.MinZOffset)) < 1 then
                    if not Config.Houses[currentHouse]['furniture'][k]['searched'] then
                        if not Config.Houses[currentHouse]['furniture'][k]['isBusy'] then
                            DrawText3Ds(Config.Houses[currentHouse]['coords']['x'] + Config.Houses[currentHouse]['furniture'][k]['coords']['x'], Config.Houses[currentHouse]['coords']['y'] + Config.Houses[currentHouse]['furniture'][k]['coords']['y'], Config.Houses[currentHouse]['coords']['z'] + Config.Houses[currentHouse]['furniture'][k]['coords']['z'] - Config.MinZOffset, Lang:t('info.aint') .. Config.Houses[currentHouse]['furniture'][k]['text'])
                            if not IsLockpicking then
                                if IsControlJustReleased(0, 38) then
                                    searchCabin(k)
                                end
                            end
                        else
                            DrawText3Ds(Config.Houses[currentHouse]['coords']['x'] + Config.Houses[currentHouse]['furniture'][k]['coords']['x'], Config.Houses[currentHouse]['coords']['y'] + Config.Houses[currentHouse]['furniture'][k]['coords']['y'], Config.Houses[currentHouse]['coords']['z'] + Config.Houses[currentHouse]['furniture'][k]['coords']['z'] - Config.MinZOffset, Lang:t('info.hsearch'))
                        end
                    else
                        DrawText3Ds(Config.Houses[currentHouse]['coords']['x'] + Config.Houses[currentHouse]['furniture'][k]['coords']['x'], Config.Houses[currentHouse]['coords']['y'] + Config.Houses[currentHouse]['furniture'][k]['coords']['y'], Config.Houses[currentHouse]['coords']['z'] + Config.Houses[currentHouse]['furniture'][k]['coords']['z'] - Config.MinZOffset, Lang:t('info.hsempty'))
                    end
                end
            end
        end

        if not inside then
            Wait(5000)
        end
        Wait(3)
    end
end)

-- Util Command (can be commented out - used for setting new spots in the config)

RegisterCommand('gethroffset', function()
    local coords = GetEntityCoords(PlayerPedId())
    local houseCoords = vector3(
        Config.Houses[currentHouse]['coords']['x'],
        Config.Houses[currentHouse]['coords']['y'],
        Config.Houses[currentHouse]['coords']['z'] - Config.MinZOffset
    )
    if inside then
        local xdist = coords.x - houseCoords.x
        local ydist = coords.y - houseCoords.y
        local zdist = coords.z - houseCoords.z
        print('X: ' .. xdist)
        print('Y: ' .. ydist)
        print('Z: ' .. zdist)
    end
end, false)