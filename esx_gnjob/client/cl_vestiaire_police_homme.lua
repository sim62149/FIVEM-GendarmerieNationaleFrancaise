ESX = nil

Citizen.CreateThread(function()
    ESX = exports["es_extended"]:getSharedObject()

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

---------------- FONCTIONS ACCESSOIRES------------------
RMenu.Add('gendarmeriehommeacce', 'main4', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommeacce', 'main4').EnableMouse = false
RMenu:Get('gendarmeriehommeacce', 'main4').Closed = function()
    Zdr4.ekip4= false
end

Zdr4 = {
    ekip4= false,
}

function OpenVestiaireHommeAcce()
    if Zdr4.ekip4 then
        Zdr4.ekip4= false
    else
        Zdr4.ekip4= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommeacce', 'main4'), true)

        Citizen.CreateThread(function()
            while Zdr4.ekip4 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommeacce', 'main4'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Retirer l'accessoire",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 0, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Retirer le ceinturons",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Enlever le Casque",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 65, 0)   --casque
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Ceinturons~s~ ↓")

                    RageUI.ButtonWithStyle("Ceinturons 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 18, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 19, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 3",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 20, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 4",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 21, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 5",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 22, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 6",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 23, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 7",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 24, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 8",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 25, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 9",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 26, 0) --tshirt 
                        end
                    end)

                    RageUI.ButtonWithStyle("Ceinturons 10",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 27, 0) --tshirt 
                        end
                    end)

                    RageUI.Separator("↓ ~o~Holster~s~ ↓")

                    RageUI.ButtonWithStyle("Holster Cuisse Equipé",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 34, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Cuisse Simple",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 43, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Cuisse Avec Chargeur",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 48, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Ceinture Avec Chargeur",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 53, 0)   --chain
                        end
                    end)

                    RageUI.ButtonWithStyle("Holster Ceinture Classique",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 7, 54, 0)   --chain
                        end
                    end)

                    RageUI.Separator("↓ ~o~Képi~s~ ↓")

                    RageUI.ButtonWithStyle("Képi 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 192, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Képi 2",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 192, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Képi 3",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 192, 2)   --casque
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Képi 4",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 192, 3)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Calot~s~ ↓")

                    RageUI.ButtonWithStyle("GAV",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 2)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 3)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 4)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 5)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 6)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 7)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 8)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 9)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 10)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 11)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 193, 12)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Calot GMO~s~ ↓")

                    RageUI.ButtonWithStyle("GAV",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 2)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 3)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 4)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 5)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 6)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 7)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 8)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 9)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 10)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 11)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 194, 12)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Bonnet~s~ ↓")

                    RageUI.ButtonWithStyle("Bonnet Blanc",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 195, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Bonnet Jaune",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 195, 1)   --casque
                        end
                    end)

                    RageUI.Separator("↓ ~o~Casque~s~ ↓")

                    RageUI.ButtonWithStyle("Casque Ecureuil",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 159, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque Balistique PSIG",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 28, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque Gendarmerie Mobile Ouvert",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 26, 1)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque Gendarmerie Mobile Fermé",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 27, 1)   --casque
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Casque EDSR Ouvert",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 20, 0)   --casque
                        end
                    end)

                    RageUI.ButtonWithStyle("Casque EDSR Fermé",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedPropIndex(GetPlayerPed(-1) , 0, 21, 0)   --casque
                        end
                    end)


                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end 

---------------- FONCTIONS PSIG------------------
RMenu.Add('gendarmeriehommepsig', 'main', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommepsig', 'main').EnableMouse = false
RMenu:Get('gendarmeriehommepsig', 'main').Closed = function()
    Zdr.ekip= false
end

Zdr = {
    ekip= false,
}

function OpenVestiaireHommePsig()
    if Zdr.ekip then
        Zdr.ekip= false
    else
        Zdr.ekip= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommepsig', 'main'), true)

        Citizen.CreateThread(function()
            while Zdr.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommepsig', 'main'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Tenues PSIG Polo Noir Manches Courtes~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues PSIG Polo Noir Manches Longues~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues PSIG 2022~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues PSIG Polo Noir Manches Longues~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 32, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues PSIG Manches Longues Bleu~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 38, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end 

---------------- FONCTIONS EDSR------------------
RMenu.Add('gendarmeriehommeedsr', 'main1', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommeedsr', 'main1').EnableMouse = false
RMenu:Get('gendarmeriehommeedsr', 'main1').Closed = function()
    Zdr1.ekip1= false
end

Zdr1 = {
    ekip1= false,
}

function OpenVestiaireHommeEdsr()
    if Zdr1.ekip1 then
        Zdr1.ekip1= false
    else
        Zdr1.ekip1= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommeedsr', 'main1'), true)

        Citizen.CreateThread(function()
            while Zdr1.ekip1 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommeedsr', 'main1'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~BMO Manches Longues Eté~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 43, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~BMO Manches Longues Hiver~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 44, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~BMO Banalisée~s~ ↓")

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 45, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 22, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 17, 0)   --shoes
                        end
                    end)

                    

                    
                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end 

---------------- FONCTIONS TERRI------------------
RMenu.Add('gendarmeriehommeterri', 'main2', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommeterri', 'main2').EnableMouse = false
RMenu:Get('gendarmeriehommeterri', 'main2').Closed = function()
    Zdr2.ekip2= false
end

Zdr2 = {
    ekip2= false,
}

function OpenVestiaireHommeTerri()
    if Zdr2.ekip2 then
        Zdr2.ekip2= false
    else
        Zdr2.ekip2= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommeterri', 'main2'), true)

        Citizen.CreateThread(function()
            while Zdr2.ekip2 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommeterri', 'main2'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Courte 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Courte 2~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 22, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 2~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 23, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Courte 3~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 26, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 125, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 3~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 4~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 28, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 5~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 29, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo Gendarmerie manche Longue 6~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 30, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues Grand Frois~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                    
                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 31, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end 

---------------- FONCTIONS TERRI------------------
RMenu.Add('gendarmeriehommegilet', 'main3', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommegilet', 'main3').EnableMouse = false
RMenu:Get('gendarmeriehommegilet', 'main3').Closed = function()
    Zdr3.ekip3= false
end

Zdr3 = {
    ekip3= false,
}

function OpenVestiaireHommeGilet()
    if Zdr3.ekip3 then
        Zdr3.ekip3= false
    else
        Zdr3.ekip3= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommegilet', 'main3'), true)

        Citizen.CreateThread(function()
            while Zdr3.ekip3 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommegilet', 'main3'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~GBP Léger Noir~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 10, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Léger Bleu~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 11, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Classique Noir 2022~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 14, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP CLassique Noir 2022 2~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 17, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP GHV Tactique~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 18, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Equipé~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 20, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Brigade de Recherche Equipé~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 21, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Identification Criminel Equipé~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 22, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Equipé 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 23, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Cynophile 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 24, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP GMO 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 25, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GPB PSIG 1~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 26, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Equipé Gazeuse~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 27, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Cynophile Gazeuse~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 28, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP GMO 2~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 29, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP PSIG 2~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 30, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.Separator("↓ ~o~GBP Equipé Tazer~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 31, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)


                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end

---------------- FONCTIONS AUTRES------------------
RMenu.Add('gendarmeriehommeautre', 'main10', RageUI.CreateMenu("", "Vestiaire..."))
RMenu:Get('gendarmeriehommeautre', 'main10').EnableMouse = false
RMenu:Get('gendarmeriehommeautre', 'main10').Closed = function()
    Zdr10.ekip10= false
end

Zdr10 = {
    ekip10= false,
}

function OpenVestiaireHommeAutre()
    if Zdr10.ekip10 then
        Zdr10.ekip10= false
    else
        Zdr10.ekip10= true 
        RageUI.Visible(RMenu:Get('gendarmeriehommeautre', 'main10'), true)

        Citizen.CreateThread(function()
            while Zdr10.ekip10 do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriehommeautre', 'main10'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Tenues Brigade de Recherche~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 35, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues Equipe Cynophile~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 36, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues Identification Criminel~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 37, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues PGHM~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 42, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 16, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues Treillis Formation~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 41, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 1)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenues de Cérémonie~s~ ↓")

                    RageUI.ButtonWithStyle("GAV - MDC",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 32, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 47, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 126, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 25, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 105, 0)   --shoes
                        end
                    end)
                    end, function()
                end, 1)
                            
            end    
        end)            
    end            
end 



local position = {
    {x = 1057.5076, y = 3836.2295, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1057.6327, 3836.2651, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues PSIG",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommePsig()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

local positionedsr = {
    {x = 1055.1173, y = 3836.2913, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(positionedsr) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionedsr[k].x, positionedsr[k].y, positionedsr[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1055.0559, 3836.2915, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues EDSR",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommeEdsr()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

local positionterri = {
    {x = 1052.9573, y = 3836.1401, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(positionterri) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionterri[k].x, positionterri[k].y, positionterri[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1052.9307, 3836.1418, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues Territorials",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommeTerri()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

local positiongilet = {
    {x = 1056.4321, y = 3836.3367, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(positiongilet) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positiongilet[k].x, positiongilet[k].y, positiongilet[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1056.4321, 3836.3367, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] GPB",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommeGilet()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

local positionacces = {
    {x = 1054.0168, y = 3836.4226, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(positiongilet) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionacces[k].x, positionacces[k].y, positionacces[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1054.0168, 3836.4226, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Accesoires",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommeAcce()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

local positionautre = {
    {x = 1052.0861, y = 3836.4309, z = 34.3608}
    
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(positiongilet) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, positionautre[k].x, positionautre[k].y, positionautre[k].z)

            if dist <= 10.5 then
            wait = 0

            DrawMarker(22, 1051.9813, 3836.3740, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 0.5 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Tenues Autres",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireHommeAutre()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)

