ESX = exports["es_extended"]:getSharedObject()
local tempo = false

local options = {
    {
        name = 'ox:option0',
        event = '',
        icon = 'fa-solid fa-shield-halved',
        label = '↓ Armes Légères ↓',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option1',
        event = 'armurerie:pistolet',
        icon = 'fa-solid fa-shield-halved',
        label = 'Pistolet',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option2',
        event = 'armurerie:pistoletcombat',
        icon = 'fa-solid fa-shield-halved',
        label = 'Pistolet de combat',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option3',
        event = 'armurerie:tazer',
        icon = 'fa-solid fa-shield-halved',
        label = 'Tazer',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option4',
        event = '',
        icon = 'fa-solid fa-shield-halved',
        label = '↓ Armes Lourdes ↓',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option5',
        event = 'armurerie:smg',
        icon = 'fa-solid fa-shield-halved',
        label = 'SMG',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option7',
        event = 'armurerie:pompe',
        icon = 'fa-solid fa-shield-halved',
        label = 'Fusil à Pompe',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option8',
        event = 'armurerie:carbine',
        icon = 'fa-solid fa-shield-halved',
        label = 'Fusil d\'Assault',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option9',
        event = '',
        icon = 'fa-solid fa-shield-halved',
        label = '↓ Autres ↓',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option10',
        event = 'armurerie:radar',
        icon = 'fa-solid fa-shield-halved',
        label = 'Radar à main',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option11',
        event = 'armurerie:gazeuse',
        icon = 'fa-solid fa-shield-halved',
        label = 'Gazeuse à main',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option12',
        event = 'armurerie:lbd',
        icon = 'fa-solid fa-shield-halved',
        label = 'LBD',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option14',
        event = 'armurerie:grenadegaz',
        icon = 'fa-solid fa-shield-halved',
        label = 'Grenade à gaz',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option15',
        event = '',
        icon = 'fa-solid fa-shield-halved',
        label = '↓ Munitions ↓',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option16',
        event = 'armurerie:amopisto',
        icon = 'fa-solid fa-shield-halved',
        label = 'Munitions de Pistolet',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option18',
        event = 'armurerie:amopompe',
        icon = 'fa-solid fa-shield-halved',
        label = 'Munitions de Fusil à Pompe',
        groups = 'gendarmerie',
    },
    {
        name = 'ox:option19',
        event = 'armurerie:amorifle',
        icon = 'fa-solid fa-shield-halved',
        label = 'Munitions de Fusil d\'Assault',
        groups = 'gendarmerie',
    },
}
local armamento = { 
    's_m_m_armoured_01'
}
exports.ox_target:addModel(armamento, options)

-- PED --
Citizen.CreateThread(function()
  if not HasModelLoaded('s_m_m_armoured_01') then
     RequestModel('s_m_m_armoured_01')
     while not HasModelLoaded('s_m_m_armoured_01') do
        Citizen.Wait(5)
     end
  end

npc = CreatePed(4, 's_m_m_armoured_01', 1049.0726, 3840.1028, 33.3608, 182.4281, false, true)
FreezeEntityPosition(npc, true)
SetEntityInvincible(npc, true)
SetBlockingOfNonTemporaryEvents(npc, true)
end)

