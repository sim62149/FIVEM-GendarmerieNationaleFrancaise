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

RMenu.Add('garagegendarme', 'main', RageUI.CreateMenu("", "Intéraction"))
RMenu:Get('garagegendarme', 'main').EnableMouse = false
RMenu:Get('garagegendarme', 'main').Closed = function()
    Zdr.ekip= false
end

Zdr = {
    ekip= false,
}

function garage()
    if Zdr.ekip then
        Zdr.ekip= false 
    else
        Zdr.ekip= true 
        RageUI.Visible(RMenu:Get('garagegendarme', 'main'), true)

        Citizen.CreateThread(function()
            while Zdr.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('garagegendarme', 'main'), true, true, true, function()
                    RageUI.ButtonWithStyle("Ranger la voiture", nil, {RightLabel = "→→"},true, function(Hovered, Active, Selected)
                        if (Selected) then   
                        local veh,dist4 = ESX.Game.GetClosestVehicle(playerCoords)
                        if dist4 < 4 then
                            DeleteEntity(veh)
                            RageUI.CloseAll()
                        end 
                    end
                end) 

                RageUI.Separator("~b~↓ Véhicule PAM ↓")
                            
                if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
                    RageUI.ButtonWithStyle("Peugeot Expert 1", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("expertgn")
                    RageUI.CloseAll()
                    end
                end)
            end

           -- if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
             --   RageUI.ButtonWithStyle("Peugeot Expert 2", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
               -- if (Selected) then
                --Citizen.Wait(1)  
                --spawnuniCar("exp12gn1")
                --RageUI.CloseAll()
                --end
            --end)
        --end
            
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
            RageUI.ButtonWithStyle("Peugeot Partner", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            Citizen.Wait(1)  
            spawnuniCar("partner3gn1")
            RageUI.CloseAll()
            end
        end)
    end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
            RageUI.ButtonWithStyle("Peugeot Partner 2021", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
            if (Selected) then
            Citizen.Wait(1)  
            spawnuniCar("partner2021")
            RageUI.CloseAll()
            end
        end)
    end




--if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
  --  RageUI.ButtonWithStyle("Mégane III 2", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    --if (Selected) then
    --Citizen.Wait(1)  
    --spawnuniCar("megane3gn")
    --RageUI.CloseAll()
    --end
--end)
--end
                            
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Peugeot Rifter", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("rifter")
    RageUI.CloseAll()
    end
end)
end                            


if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Volkswagen Egolf", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("egolfgn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Ford Focus", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("focus3gn")
    RageUI.CloseAll()
    end
end)
end



                RageUI.Separator("~b~↓ Véhicule PSIG ↓")
                            
--if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
  --  RageUI.ButtonWithStyle("Volkswagen Sharan", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    --if (Selected) then
    --Citizen.Wait(1)  
    --spawnuniCar("sharangn")
    --RageUI.CloseAll()
    --end
--end)
--end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Volkswagen Sharan Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("sharan2gn")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Citroën C4 Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("c4bana")
    RageUI.CloseAll()
    end
end)
end
                            
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Toyota Land Cruiser 2016", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("toyotagign")
    RageUI.CloseAll()
    end
end)
end


if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Peugeot 5008 Banlisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("5008bana")
    RageUI.CloseAll()
    end
end)
end
                            
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Peugeot 308SW Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("308swpsig")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("AUDI Q8 Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("q8ban")
    RageUI.CloseAll()
    end
end)
end


                RageUI.Separator("~b~↓ Véhicule CYNOPHILE ↓")

 if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
                    RageUI.ButtonWithStyle("Dacia Duster", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
                    if (Selected) then
                    Citizen.Wait(1)  
                    spawnuniCar("dustcynogn")
                    RageUI.CloseAll()
                    end
                end)
                end

                RageUI.Separator("~b~↓ Véhicule ERI ↓")
                            
if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Renault Mégane IIIRS", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("meganers2")
    RageUI.CloseAll()
    end
end)
end




                RageUI.Separator("~b~↓ Véhicule BMO ↓")                            



if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Yamaha MT09", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("mt09gn")
    RageUI.CloseAll()
    end
end)
end

                                              
                            RageUI.Separator("~b~↓ Brigade Rapide d'Intervention↓")  
                            
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Audi RS6", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("ACTRPavant")
    RageUI.CloseAll()
    end
end)
end
                            
                             if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Renault RS01", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("polrs")
    RageUI.CloseAll()
    end
end)
end
                            
                            if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Alpine A110", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("al1")
    RageUI.CloseAll()
    end
end)
end
                            
                            
                            
                            --   RageUI.Separator("~b~↓ Véhicule Gendarmerie Mobile ↓")                            


--if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
  --  RageUI.ButtonWithStyle("Renault Master", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    --if (Selected) then
    --Citizen.Wait(1)  
    --spawnuniCar("mastergend")
    --RageUI.CloseAll()
    --end
--end)
--end

                            
RageUI.Separator("~b~↓ Véhicule PGHM ↓")

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Ford Ranger", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("fordgn")
    RageUI.CloseAll()
    end
end)
end


if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("4X4 PGHM", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("pghm2")
    RageUI.CloseAll()
    end
end)
end                            

RageUI.Separator("~b~↓ GIGN ↓")

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Sherpa GIGN", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("gign")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Volkswagen T6 Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("t6ban")
    RageUI.CloseAll()
    end
end)
end

if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then
    RageUI.ButtonWithStyle("Renault Master Banalisée", nil, {RightLabel = "→"},true, function(Hovered, Active, Selected)
    if (Selected) then
    Citizen.Wait(1)  
    spawnuniCar("masterbana")
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
    {x = 1061.3258, y = 3805.9941, z = 33.5605}
    }


Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
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
					garage()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)



function spawnuniCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, Config.spawn.spawnvoiture.position.x, Config.spawn.spawnvoiture.position.y, Config.spawn.spawnvoiture.position.z, Config.spawn.spawnvoiture.position.h, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
    local plaque = "GENDARMERIE"..math.random(1,9)
    SetVehicleNumberPlateText(vehicle, plaque) 
    SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1) 
end


local npc2 = {
	{hash="s_m_m_prisguard_01", x = 1061.9094, y = 3806.2698, z = 33.5604, a=189.7623},
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