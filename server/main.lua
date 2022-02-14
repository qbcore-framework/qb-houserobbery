QBCore = exports['qb-core']:GetCoreObject()

-- // Callbacks \\ --
QBCore.Functions.CreateCallback('qb-houserobbery:server:GetHouseConfig', function(source, cb)
    cb(Config.Houses)
end)
QBCore.Functions.CreateCallback('qb-houserobbery:server:artitem', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local item = Player.Functions.GetItemByName('artpiece')
        if item ~= nil then
            local quantity = Player.Functions.GetItemByName('artpiece').amount
            if quantity == 1 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('qb-houserobbery:server:teleitem', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local item = Player.Functions.GetItemByName('television')
        if item ~= nil then
            local quantity = Player.Functions.GetItemByName('television').amount
            if quantity == 1 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('qb-houserobbery:server:hifiitem', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local item = Player.Functions.GetItemByName('musicequipment')
        if item ~= nil then
            local quantity = Player.Functions.GetItemByName('musicequipment').amount
            if quantity == 1 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('qb-houserobbery:server:laptopitem', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local item = Player.Functions.GetItemByName('pcequipment')
        if item ~= nil then
            local quantity = Player.Functions.GetItemByName('pcequipment').amount
            if quantity == 1 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    else
        cb(false)
    end
end)
QBCore.Functions.CreateCallback('qb-houserobbery:server:microwaveitem', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player ~= nil then
        local item = Player.Functions.GetItemByName('microwave')
        if item ~= nil then
            local quantity = Player.Functions.GetItemByName('microwave').amount
            if quantity == 1 then
                cb(true)
            else
                cb(false)
            end
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

-- // Functions \\ --
function ResetHouseStateTimer(house)
    -- Cannot parse math.random "directly" inside the tonumber function
    local num = math.random(3333333, 11111111)
    local time = tonumber(num)
    Citizen.SetTimeout(time, function()
        Config.Houses[house]["opened"] = false
        for k, v in pairs(Config.Houses[house]["furniture"]) do
            v["searched"] = false
        end
		if Config.Houses[house]["propitem"] ~= nil then
			for k, v in pairs(Config.Houses[house]["propitem"]) do
			  v["stolen"] = false
			end
		end
        TriggerClientEvent('qb-houserobbery:client:ResetHouseState', -1, house)
    end)
end

-- // Events \\ -- 
RegisterServerEvent('qb-houserobbery:server:enterHouse', function(house)
    local src = source
    local itemInfo = QBCore.Shared.Items["lockpick"]
    local Player = QBCore.Functions.GetPlayer(src)
    
    if not Config.Houses[house]["opened"] then
        ResetHouseStateTimer(house)
        TriggerClientEvent('qb-houserobbery:client:setHouseState', -1, house, true)
    end
    TriggerClientEvent('qb-houserobbery:client:enterHouse', src, house)
    Config.Houses[house]["opened"] = true
end)
RegisterServerEvent('qb-houserobbery:server:lockHouse', function(house)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Config.Houses[house]["opened"] then
        TriggerClientEvent('qb-houserobbery:client:setHouseState', -1, house, false)
    end
    Config.Houses[house]["opened"] = false
end)
RegisterServerEvent('qb-houserobbery:server:searchCabin', function(cabin, house)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck = math.random(1, 10)
    local itemFound = math.random(2, 6)
    local itemCount = 1

    local Tier = 1
    if Config.Houses[house]["tier"] == 1 then
        Tier = 1
    elseif Config.Houses[house]["tier"] == 2 then
        Tier = 2
    elseif Config.Houses[house]["tier"] == 3 then
        Tier = 3
    end

    if itemFound < 4 then
        if luck == 10 then
            itemCount = 3
        elseif luck >= 6 and luck <= 8 then
            itemCount = 2
        end
        for i = 1, itemCount, 1 do
            local randomItem = Config.Rewards[Tier][Config.Houses[house]["furniture"][cabin]["type"]][math.random(1, #Config.Rewards[Tier][Config.Houses[house]["furniture"][cabin]["type"]])]
            local itemInfo = QBCore.Shared.Items[randomItem]
            if math.random(1, 500) == 69 then
                randomItem = "daily_ticket"
                itemInfo = QBCore.Shared.Items[randomItem]
                Player.Functions.AddItem(randomItem, 1)
                TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            else
                if not itemInfo["unqiue"] then
                    local itemAmount = 1
                    if randomItem == "goldchain" then
                        itemAmount = math.random(2, 4)
                    --[[ elseif randomItem == "10kgoldchain" then
                        itemAmount = math.random(2, 4) ]]
                    elseif randomItem == "rolex" then
                        itemAmount = math.random(2, 4)
                    elseif randomItem == "diamondring" then
                        itemAmount = math.random(2, 4)
                    elseif randomItem == "iphone" then
                        itemAmount = math.random(4, 6)
                    elseif randomItem == "samsungphone" then
                        itemAmount = math.random(4, 6)
                    elseif randomItem == "slushy" then
                        itemAmount = math.random(5, 10)
                    end
                    Player.Functions.AddItem(randomItem, itemAmount)
                else
                    Player.Functions.AddItem(randomItem, 1)
                end
                TriggerClientEvent('inventory:client:ItemBox', src, itemInfo, "add")
            end
            Citizen.Wait(500)
            -- local weaponChance = math.random(1, 500)
        end
    else
        TriggerClientEvent('QBCore:Notify', src, 'The cabin is empty', 'error', 5000)
    end

    Config.Houses[house]["furniture"][cabin]["searched"] = true
    TriggerClientEvent('qb-houserobbery:client:setCabinState', -1, house, cabin, true)
end)
RegisterServerEvent('qb-houserobbery:server:recieve:extra', function(prop, house)
  local Player = QBCore.Functions.GetPlayer(source)
  Player.Functions.AddItem(Config.Houses[house]['propitem'][prop]['itemname'], 1)

  TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.Houses[house]['propitem'][prop]['itemname']], "add")
  Config.Houses[house]['propitem'][prop]['stolen'] = true
  TriggerClientEvent('qb-houserobbery:client:set:extra:state', -1, house, prop, true)
end)
RegisterServerEvent('qb-houserobbery:server:SetBusyState', function(cabin, house, bool)
    Config.Houses[house]["furniture"][cabin]["isBusy"] = bool
    TriggerClientEvent('qb-houserobbery:client:SetBusyState', -1, cabin, house, bool)
end)