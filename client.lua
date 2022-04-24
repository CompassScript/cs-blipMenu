blipshs = {}

local firstLogin = true

Citizen.CreateThread(function()
    Citizen.Wait(1000)
    blips = Config.Blips
    SendNUIMessage({
        action = "setupLS",
        data = blips,
        status = Config.DefaultBlip
    })
end)

RegisterCommand("openblipmenu", function()
    openUI(true)
end)
RegisterCommand("closeblipmenu", function()
    openUI(false)
end)

RegisterNetEvent("blipMenu:open")
AddEventHandler("blipMenu:open", function()
    openUI(true)
end)

RegisterNetEvent("blipMenu:close")
AddEventHandler("blipMenu:close", function()
    openUI(false)
end)

function openUI(bool)
    SetNuiFocus(bool, bool)
    blips = Config.Blips
    if bool then
        SendNUIMessage({
            action = "openUI",
            data = blips,
            login = firstLogin
        })
    -- else
    --     SendNUIMessage({
    --         action = "closeUI",
    --     })
    end
    if firstLogin then firstLogin = false end
end

RegisterNUICallback('closeBlipMenu', function()
    openUI(false)
end)

RegisterNUICallback('setupBlip', function(data)
    if data.data.blipStatus == 'active' then    
        local blipName
        local blipColor
        local blipScale
        local blipIcon
        local blip
        if Config.Blips[data.data.blipID].ingame.locations then
            for k,v in ipairs(Config.Blips[data.data.blipID].ingame.locations) do
                blipName = Config.Blips[data.data.blipID].ingame.locations[k].name
                blipColor = Config.Blips[data.data.blipID].ingame.locations[k].color
                blipScale = Config.Blips[data.data.blipID].ingame.locations[k].scale
                blipIcon = Config.Blips[data.data.blipID].ingame.locations[k].blip
                blip = AddBlipForCoord(v.coords)
                local blipData = {}        
                blipData.name = data.data.blipID
                blipData.blip = blip
                SetBlipSprite (blip, blipIcon)
                SetBlipColour (blip, blipColor)
                SetBlipScale (blip, blipScale)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName('STRING')
                AddTextComponentSubstringPlayerName(blipName)
                EndTextCommandSetBlipName(blip)
                table.insert(blipshs, blipData)
            end
        else
            blipName = Config.Blips[data.data.blipID].name
            blipColor = Config.Blips[data.data.blipID].ingame.color
            blipScale = Config.Blips[data.data.blipID].ingame.scale
            blipIcon = Config.Blips[data.data.blipID].ingame.blip
            for k,v in ipairs(Config.Blips[data.data.blipID].ingame.coords) do
                local blip = AddBlipForCoord(v)
                local blipData = {}        
                blipData.name = data.data.blipID
                blipData.blip = blip
                SetBlipSprite (blip, blipIcon)
                SetBlipColour (blip, blipColor)
                SetBlipScale (blip, blipScale)
                SetBlipAsShortRange(blip, true)
                BeginTextCommandSetBlipName('STRING')
                AddTextComponentSubstringPlayerName(blipName)
                EndTextCommandSetBlipName(blip)
                table.insert(blipshs, blipData)
            end
        end
    elseif data.data.blipStatus == 'passive' then
        for k, v in pairs(blipshs) do
            if v.name == data.data.blipID then
                RemoveBlip(v.blip)
            end
        end     
    end
end)

