Config                            = {}

Config.DrawDistance               = 25.0
Config.Type = 21

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.WhitelistedCops = {
	'gendarmerie'
}

Config.armurerie = {
    {nom = "Pistolet", arme = "weapon_pistol"},
	{nom = "Pistolet G17", arme = "weapon_combatpistol"},
	{nom = "Fusil à pompe", arme = "weapon_pumpshotgun_mk2"},
	{nom = "M4", arme = "weapon_carbinerifle"},
	{nom = "Mp5", arme = "weapon_smg"},
	{nom = "G36", arme = "weapon_specialcarbine"},
	{nom = "Lbd", arme = "weapon_lbd"},
	{nom = "Lanceur cougar", arme = "weapon_lgcougar"},
    {nom = "Flashbang", arme = "weapon_flashbang"},
    {nom = "Gazeuse", arme = "weapon_gazeuse"},

}

Config.arm = {
}


Config.armi = {
}


Config.pos = {
	armurerie = {
		position = {x = 1049.0073, y = 3838.4446, z = 34.3607} 
	}
}

Config.PoliceStations = {}

Config.spawn = {

	spawnvoiture = {
		position = {x = 1060.1879, y = 3796.3994, z = 33.3602, h = 86.4637}
	},
	spawnheli = {
		position = {x = -889.02532958984, y = -1497.6273193359, z = 18.355052947998, h = 306.2787170410156}
	},
}
