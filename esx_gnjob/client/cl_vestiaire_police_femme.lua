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

---------------- FONCTIONS ------------------
RMenu.Add('gendarmeriefemme', 'main', RageUI.CreateMenu("", "Vestiaire"))
RMenu:Get('gendarmeriefemme', 'main').EnableMouse = false
RMenu:Get('gendarmeriefemme', 'main').Closed = function()
    Zdr.ekip= false
end

Zdr = {
    ekip= false,
}

function OpenVestiaireFemme()
    if Zdr.ekip then
        Zdr.ekip= false
    else
        Zdr.ekip= true 
        RageUI.Visible(RMenu:Get('gendarmeriefemme', 'main'), true)

        Citizen.CreateThread(function()
            while Zdr.ekip do
                Wait(0)
                RageUI.IsVisible(RMenu:Get('gendarmeriefemme', 'main'), true, true, true, function()
                    
                    RageUI.ButtonWithStyle("Reprendre sa tenue civile",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                            TriggerEvent('skinchanger:loadSkin', skin)
                            end)
                        end
                    end)
        
                    RageUI.Separator("↓ ~o~Polo manche courte bleu~s~ ↓")
    

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 16, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo manche courte noir~s~ ↓")
    

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 17, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo manche longue bleu~s~ ↓")
    

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 19, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Polo manche longue noir~s~ ↓")
    

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 20, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 19, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 109, 0)   --shoes
                        end
                    end)

                    RageUI.Separator("↓ ~o~Tenue Moto~s~ ↓")
    

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 0)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 1)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 2)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 3)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 4)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 5)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)
                
                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 6)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 7)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 8)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 9)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 10)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 11)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 12)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 13)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 8, 15, 0) --tshirt 
                            SetPedComponentVariation(GetPlayerPed(-1) , 11, 27, 14)  --torse
                            SetPedComponentVariation(GetPlayerPed(-1) , 3, 0, 0)  -- bras
                            SetPedComponentVariation(GetPlayerPed(-1) , 4, 18, 0)   --pants
                            SetPedComponentVariation(GetPlayerPed(-1) , 6, 16, 0)   --shoes
                        end
                    end)


                    RageUI.Separator("↓ ~o~GBP Léger Noir~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 8, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    
                    RageUI.Separator("↓ ~o~GBP Lourd noir~s~ ↓")

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

                    
                    RageUI.Separator("↓ ~o~GBP Equiper~s~ ↓")

                    RageUI.ButtonWithStyle("GAV 1",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 0)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 1)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Brigadier-Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 2)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 3)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Gendarme",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 4)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Maréchal des Logis Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 5)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 6)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Adjudent Chef",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 7)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Major",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 8)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Sous-Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 9)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 10)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Capitaine",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 11)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Commandant",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 12)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Lieutenant-Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 13)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)

                    RageUI.ButtonWithStyle("Colonel",nil, {nil}, true, function(Hovered, Active, Selected)
                        if Selected then
                            SetPedComponentVariation(GetPlayerPed(-1) , 9, 13, 14)   --bulletwear
                            SetPedArmour(GetPlayerPed(-1) , 100)
                        end
                    end)
        
                end, function()
                end, 1)
 
            end    
        end)            
    end            
end    

local position = {
    {x = 1057.3151, y = 3832.9880, z = 34.3608}
}

Citizen.CreateThread(function()
    while true do

      local wait = 750

        for k in pairs(position) do
        if ESX.PlayerData.job and ESX.PlayerData.job.name == 'gendarmerie' then 
            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)

            if dist <= 10.0 then
            wait = 0

            DrawMarker(22, 1057.3151, 3832.9880, 34.3608, 0.0, 0.0, 0.0, 0.0,0.0,0.0, 0.3, 0.3, 0.3, 255, 235, 59, 255, true, true, p19, true) 
        
            if dist <= 1.0 then
               wait = 0
			   RageUI.Text({

				message = "Appuyez sur [~r~E~w~] Pour changer de vêtements (Femme)",
	
				time_display = 1
	
			})
                if IsControlJustPressed(1,51) then
					OpenVestiaireFemme()
            end
        end
    end
    end
    Citizen.Wait(wait)
    end
end
end)
