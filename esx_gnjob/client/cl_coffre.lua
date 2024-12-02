local PlayerData                = {}
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local ox_inventory              = exports.ox_inventory
local ox_target                 = exports.ox_target

ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	ESX = exports["es_extended"]:getSharedObject()
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

function OpenCoffreGN()
	TriggerServerEvent('ox:loadStashes')
	ox_inventory:openInventory('stash', {id="gendarmerie", groups="gendarmerie"})
end
  
exports("OpenCoffreGN",OpenCoffreGN)

local position = {
  vector3(1045.8962, 3834.6138, 34.3607)
}


Citizen.CreateThread(function()
    while true do

      local wait = 0

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 10.5 then
            wait = 0

			DrawMarker(22, 1045.8962, 3834.6138, 34.3607, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true)
        
            if dist <= 2.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Pour ouvrir le coffre",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenCoffreGN()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)