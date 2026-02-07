ESX = exports["es_extended"]:getSharedObject()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(200)
        
        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed) - 100
        local armor = GetPedArmour(playerPed)
        
        local hunger, thirst = 0, 0

        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            hunger = status.getPercent()
        end)
        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            thirst = status.getPercent()
        end)

        SendNUIMessage({
            type = "updateStatus",
            health = health,
            armor = armor,
            hunger = hunger,
            thirst = thirst
        })
    end
end)