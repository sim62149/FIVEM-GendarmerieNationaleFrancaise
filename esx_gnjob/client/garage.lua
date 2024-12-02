ESX = nil

Citizen.CreateThread(function()
    ESX = exports["es_extended"]:getSharedObject()

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)



  -------------------------------------------

  --------------------------------------

RMenu.Add('garageorpi', 'main', RageUI.CreateMenu("Garage Orpi", "Intéraction"))
RMenu:Get('garageorpi', 'main').EnableMouse = false
RMenu:Get('garageorpi', 'main').Closed = function()
    Zdr.ekip= false
end

Zdr = {
    ekip= false,
}

function garageorpi()
    if Zdr.ekip then
        Zdr.ekip= false 
    else
        Zdr.ekip= true 
        RageUI.Visible(RMenu:Get('garageorpi', 'main'), true)

        Citizen.CreateThread(function()
            while Zdr.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('garageorpi', 'main'), true, true, true, function()
                    RageUI.ButtonWithStyle("Ranger la voiture", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                        if (Selected) then   
                        local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                        if dist4 < 4 then
                            DeleteEntity(veh)
                            RageUI.CloseAll()
                        end 
                    end
                end) 

                RageUI.Separator("~b~↓ Véhicule Orpi ↓")
                            
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'orpi' then
                    RageUI.ButtonWithStyle("Citroen C4 Cactus", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar2("c4cactusorpi")
                    RageUI.CloseAll()
                    end
                end)
            end

            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'orpi' then
                RageUI.ButtonWithStyle("Renault Clio", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                if (Selected) then
                Citizen.Wait(1)  
                spawnuniCar2("orpi")
                RageUI.CloseAll()
                end
            end)
        end
            

 
                end, function()
                end) 
            end    
        end)            
    end            
end

local position = {
    {x = -255.54602050781, y = -896.50811767578, z = 31.2194480896}
}


Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'orpi' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 2.5 then
            wait = 0
        
            if dist <= 1.5 then
               wait = 0
               RageUI.Text({

				message = "Appuyer sur [~r~E~w~] Pour ouvrir le garage",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					garageorpi()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)



function spawnuniCar2(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, -274.32360839844, -890.10473632813, 31.080081939697, 337.2379455566406, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "ORPI"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1) 
end


local npc2 = {
	{hash="s_m_m_prisguard_01", x = -255.68992614746, y = -897.21844482422, z = 31.219446182251, a=338.0625},
}

Citizen.CreateThread(function()
	for _, item2 in pairs(npc2) do
		local hash = GetHashKey(item2.hash)
		while not HasModelLoaded(hash) do
		RequestModel(hash)
		Wait(20)
		end
		ped2 = CreatePed("PED_TYPE_CIVFEMALE", item2.hash, item2.x, item2.y, item2.z-0.92, item2.a, false, true)
		SetBlockingOfNonTemporaryEvents(ped2, true)
		FreezeEntityPosition(ped2, true)
		SetEntityInvincible(ped2, true)
	end
end)