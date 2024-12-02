ESX = exports["es_extended"]:getSharedObject()
local tempo = false

-------------------------------------------------------------------------------------------------
------------------------------------ Fonctions -------------------------------------------
-------------------------------------------------------------------------------------------------
RegisterNetEvent('armurerie:pistolet', function()
    if not tempo then 
        tempo = true
        TriggerServerEvent('pistolet', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre pistolet',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        tempo = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:pistoletcombat', function()
    if not tempo1 then 
        tempo1 = true
        TriggerServerEvent('pistoletcombat', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre pistolet de combat',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        tempo1 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:tazer', function()
    if not tempo2 then 
        tempo2 = true
        TriggerServerEvent('tazer', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre tazer',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        tempo2 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:smg', function()
    if not temps3 then 
        temps3 = true
        TriggerServerEvent('smg', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre SMG',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps3 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:microsmg', function()
    if not temps4 then 
        temps4 = true
        TriggerServerEvent('microsmg', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Micro-SMG',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps4 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:pompe', function()
    if not temps5 then 
        temps5 = true
        TriggerServerEvent('pompe', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Fusil à Pompe',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps5 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:carbine', function()
    if not temps6 then 
        temps6 = true
        TriggerServerEvent('carbine', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Fusil d\'Assault',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps6 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:radar', function()
    if not temps7 then 
        temps7 = true
        TriggerServerEvent('radar', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Radar à Mains',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps7 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:gazeuse', function()
    if not temps8 then 
        temps8 = true
        TriggerServerEvent('gazeuse', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Gazeuse à Mains',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps8 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:lbd', function()
    if not temps9 then 
        temps9 = true
        TriggerServerEvent('lbd', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre LBD',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps9 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:grenade', function()
    if not temps10 then 
        temps10 = true
        TriggerServerEvent('grenade', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Grenade',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps10 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:grenadegaz', function()
    if not temps11 then 
        temps11 = true
        TriggerServerEvent('grenadegaz', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu votre Grenade à Gaz',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps11 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà votre armement',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:amopisto', function()
    if not temps12 then 
        temps12 = true
        TriggerServerEvent('amopisto', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu vos munitions de pistolet',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps12 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà des munitions',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:amogrosse', function()
    if not temps13 then 
        temps13 = true
        TriggerServerEvent('amogrosse', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu vos munitions de gros calibre',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps13 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà des munitions',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:amopompe', function()
    if not temps14 then 
        temps14 = true
        TriggerServerEvent('amopompe', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu vos munitions de fusil à pompe',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps14 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà des munitions',
            type = 'error'
        })
    end
end)

RegisterNetEvent('armurerie:amorifle', function()
    if not temps15 then 
        temps15 = true
        TriggerServerEvent('amorifle', 0)
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez reçu vos munitions de fusil d\'assault',
            type = 'success'
        })
        Wait(60000) -- 60 secondi
        temps15 = false
    else
        lib.notify({
            title = 'Armurerie',
            position = 'down-right',
            description = 'Vous avez déjà des munitions',
            type = 'error'
        })
    end
end)