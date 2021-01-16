Config = {}

Config.Locale = "en"
Config.IncludeCash = false -- Include cash in inventory?
Config.IncludeWeapons = false -- Include weapons in inventory?
Config.IncludeAccounts = false -- Include accounts (bank, black money, ...)?
Config.ExcludeAccountsList = {'bank', 'money'} -- List of accounts names to exclude from inventory
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.
Config.MaxWeight = 250 --SAME AS THE DEFAULT ON ES EXTENDED CONFIG

-- List of item names that will close ui when used
Config.CloseUiItems = {"idcard", "donut", "nugget", "cigarette", "beer", "methburn", "vodka", "bread", "coffee", "radio", "coke", "meth", "medikit", "binoculars", "bulletproof", "oxygenmask", "trailburst", "shotburst", "starburst","fountain", "cuffs", "cuff_keys"}

Config.ShopBlipID = 52
Config.TacoShopBlipID = 52
Config.PrisonShopBlipID = 52
Config.YouToolBlipID = 52
Config.WeaponShopBlipID = 110
Config.StripClubShopBlipID = 121
Config.YellowJackShopBlipID = 93
Config.BahamaMamasShopBlipID = 93
Config.TequiLaLaShopBlipID = 93
Config.SplitSideComedyShopBlipID = 102

Config.ShopLength = 14
Config.PrisonShopLength = 2

Config.Color = 2
Config.WeaponShopColor = 1
Config.StripClubShopColor = 27
Config.YellowJackShopColor = 27
Config.BahamaMamasShopColor = 27
Config.TequiLaLaShopColor = 27
Config.SplitSideComedyShopColor = 27

Config.WeaponLiscence = {x = 12.47, y = -1105.5, z = 29.8}
Config.LicensePrice = 5000

Config.Shops = {
    RegularShop = {
        Locations = {
			{x = 373.875,   y = 325.896,  z = 102.566},
			{x = 2557.458,  y = 382.282,  z = 107.622},
			{x = -3038.939, y = 585.954,  z = 6.908},
			{x = -3241.927, y = 1001.462, z = 11.830},
			{x = 547.431,   y = 2671.710, z = 41.156},
			{x = 1961.464,  y = 3740.672, z = 31.343},
			{x = 2678.916,  y = 3280.671, z = 54.241},
            {x = 1729.216,  y = 6414.131, z = 34.037},
            {x = -48.519,   y = -1757.514, z = 28.421},
			{x = 1163.373,  y = -323.801,  z = 68.205},
			{x = -707.501,  y = -914.260,  z = 18.215},
			{x = -1820.523, y = 792.518,   z = 137.118},
            {x = 1698.388,  y = 4924.404,  z = 41.063},
            {x = 25.723,   y = -1346.966, z = 28.497},
            {x = 1135.808,  y = -982.281,  z = 45.415},
			{x = -1222.915, y = -906.983,  z = 11.326},
			{x = -1487.553, y = -379.107,  z = 39.163},
			{x = -2968.243, y = 390.910,   z = 14.043},
			{x = 1166.024,  y = 2708.930,  z = 37.157},
            {x = 1392.562,  y = 3604.684,  z = 33.980},
            {x = -1422.228,  y = -269.064,  z = 45.314},
            {x = -2540.800,  y = 2313.85,  z = 32.410},
            {x = 161.434,  y = 6640.726,  z = 30.710}
        },
        Items = {
            { name = 'water', price = 20},
            { name = 'bandage', price = 20},
            { name = 'energy', price = 20},
            { name = 'coffee', price = 20},
            { name = 'cola', price = 20},
            { name = 'burger', price = 20}
        }
    },

    YouToolShop = {
        Locations = {
            {x = 44.154,   y = -1747.651,  z = 28.477},
            {x = 2749.371,   y = 3472.33,  z = 54.67}
        },
        Items = {
            { name = 'fixkit', price = 20},
            { name = 'armor', price = 20}
        }
    },

    HotDogShop = {
        Locations = {
			{x = 43.487,   y = -1003.850,  z = 29.286}
        },
        Items = {
            { name = 'water', price = 20},
            { name = 'coffee', price = 20},
            { name = 'cola', price = 20}
        }
    },

    TacoShop = {
        Locations = {
			{x = 5.234,   y = -1605.153,  z = 28.390}
        },
        Items = {
            { name = 'water', price = 20},
            { name = 'coffee', price = 20},
            { name = 'cola', price = 20},
            { name = 'tacos', price = 20}
        }
    },

    PrisonShop = {
        Locations = {
            {x = 1728.41, y = 2584.31, z = 45.84}
        },
        Items = {
            { name = 'bread', price = 20},
            { name = 'water', price = 20},
            { name = 'cigarette', price = 20},
            { name = 'lighter', price = 20}
        }
    },

    WeaponShop = {
        Locations = {
            { x = -662.180, y = -934.961, z = 20.829 },
            { x = 810.25, y = -2157.60, z = 28.62 },
            { x = 1693.44, y = 3760.16, z = 33.71 },
            { x = -330.24, y = 6083.88, z = 30.45 },
            { x = 252.63, y = -50.00, z = 68.94 },
            { x = 22.09, y = -1107.28, z = 28.80 },
            { x = 2567.69, y = 294.38, z = 107.73 },
            { x = -1117.58, y = 2698.61, z = 17.55 },
            { x = 842.44, y = -1033.42, z = 27.19 }
        },
        Items = {
            { name = "WEAPON_PISTOL", price = 2000, count = 1, grade = 0 },
            { name = "WEAPON_FLASHLIGHT", price = 100, count = 1, grade = 0 },
            { name = "WEAPON_MACHETE", price = 20},
            { name = "WEAPON_BAT", price = 200},
            { name = "WEAPON_FIREEXTINGUISHER", price = 20},
            { name = "disc_ammo_pistol", price = 1000, count = 30, grade = 0 }
        }
    },

    PoliceArmoury = {
        Locations = {
            { x = 461.44146728516, y = -981.16314697266, z = 29.5 }
        },
        Items = {
            { name = 'armor', price = 0},
            { name = 'bandage', price = 0},
            { name = 'burger', price = 0},
            { name = 'water', price = 0},
            { name = "disc_ammo_pistol", price = 0, count = 1, grade = 0 },
            { name = "disc_ammo_rifle", price = 0, count = 1, grade = 0 },
            { name = "disc_ammo_shotgun", price = 0, count = 1, grade = 0 },
            { name = "WEAPON_COMBATPISTOL", price = 0, count = 1, grade = 0 },
            { name = "WEAPON_STUNGUN", price = 0, count = 1, grade = 0 },
            { name = "WEAPON_NIGHTSTICK", price = 0, count = 1, grade = 0 },
            { name = "WEAPON_FLASHLIGHT", price = 0, count = 1, grade = 0 },
            { name = "WEAPON_PUMPSHOTGUN", price = 0, count = 1, grade = 2 },
            { name = "WEAPON_CARBINERIFLE", price = 0, count = 1, grade = 3 },
            { name = "WEAPON_FIREEXTINGUISHER", price = 20}
        }
    },

    StripClubShop = {
        Locations = {
            { x = 127.40994262695, y = -1283.9071044922, z = 29.278770446777 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20}
        }
    },

    YellowJackShop = {
        Locations = {
            { x = 1985.8453369141, y = 3053.8210449219, z = 47.215217590332 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20}
        }
    },

    BahamaMamasShop = {
        Locations = {
            { x = -1377.5860595703, y = -627.01214599609, z = 30.819566726685 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20}
        }
    },

    TequiLaLaShop = {
        Locations = {
            { x = -560.22607421875, y = 285.90762329102, z = 82.17635345459 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20}
        }
    },

    SplitSideComedyShop = {
        Locations = {
            { x = -435.31304931641, y = 275.78692626953, z = 83.422027587891 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20}
        }
    },

    DiamondCasinoShop = {
        Locations = {
            { x = 1108.3341064453, y = 208.54386901855, z = -49.440086364746 }
        },
        Items = {
            { name = 'vodka', price = 20},
            { name = 'rhum', price = 20},
            { name = 'tequila', price = 20},
            { name = 'whisky', price = 20},
            { name = 'martini', price = 20},
            { name = 'energy', price = 20},
            { name = 'beer', price = 20},
            { name = 'water', price = 20},
            { name = 'energy', price = 20},
            { name = 'coffee', price = 20},
            { name = 'cola', price = 20},
            { name = 'burger', price = 20},
            { name = 'tacos', price = 20}
        }
    },
}


Config.Throwables = {
    WEAPON_MOLOTOV = 615608432,
    WEAPON_GRENADE = -1813897027,
    WEAPON_STICKYBOMB = 741814745,
    WEAPON_PROXMINE = -1420407917,
    WEAPON_SMOKEGRENADE = -37975472,
    WEAPON_PIPEBOMB = -1169823560,
    WEAPON_FLARE = 1233104067,
    WEAPON_SNOWBALL = 126349499
}

Config.FuelCan = 883325847

Config.PropList = {
    cash = {["model"] = 'prop_cash_pile_02', ["bone"] = 28422, ["x"] = 0.02, ["y"] = 0.02, ["z"] = -0.08, ["xR"] = 270.0, ["yR"] = 180.0, ["zR"] = 0.0}
}
Config.localWeight = {
	radio = 350,
	alive_chicken = 200,
	advancedlockpick = 600,
	bandage = 100,
	beer = 140,
	receipt = 100,
	repairkit = 700,
	bread = 125,
	weed = 100,
	secure_card = 200,
	shotburst = 150,
	soda = 100,
	cigarette = 100,
	starburst = 100,
	stone = 50,
	cocacola = 100,
	cocaine = 100,
	coffee = 100,
	thermal_charge = 200,
	copper = 100,
	binoculars = 350,
	trailburst = 150,
	diamond = 100,
	oxygenmask = 1000,
	nugget = 100,
	medikit = 100,
	lockpick = 300,
	laptop_h = 400,
	fixkit = 100,
	fixtool = 100,
	jewels = 200,
	gold = 100,
	bulletproof = 900,
	hamburger = 100,
	icetea = 100,
	iron = 150,
	leather = 100,
	lighter = 100,
	marijuana = 450,
	fixtool = 1000,
	medikit = 100,
	idcard = 120,
	id_card_f = 150,
	id_card = 100,
	oxygen_mask = 100,
	packaged_chicken = 100,
	packaged_plank = 100,
	petrol = 400,
	petrol_raffin = 100,
	hotdog = 130,
	gold = 200,
	sandwich = 100,
	fountain = 160,
	slaughtered_chicken = 150,
	squid = 100,
	squidbait = 100,
	stone = 100,
	copper = 300,
	diamond = 400,
	turtlebait = 100,
	vodka = 200,
	washedstones = 40,
	water = 100,
	weaponflashlight = 100,
	donut = 100,
	weaponskin = 100,
	weed_pooch = 100,
	whisky = 100,
	wine = 100,
	wood = 100,
	cokebrick = 1200,
	worm = 100,
	nothing = 300,
	porkpackage = 300,
	coke = 150,
	rice_pro = 300,
	rice = 300,
	phone = 500,
	chest_a = 25,
	chest_a = 25,
	nurek = 25,
	honey_b = 25,
	honey_a = 25,
	marijuana = 25,
	cannabis = 125,
	sickle = 25,
	pizza = 25,
	burger = 25,
	pastacarbonara = 25,
	macka = 25,
	cigarett = 25,
	pro_wood = 25,
	wood = 25,
	meth_pooch = 25,
	meth = 25,
	marijuana = 25,
	wool = 25,
	clothe = 25,
	glass = 25,
	sands = 25,
	bcabbage = 25,
	acabbage = 25,
	gold_t = 25,
	gold_o = 25,
	mushroom = 25,
	mushroom_d = 25,
	mushroom_p = 25,
	oil_b = 25,
	oil_a = 25,
	leather_a = 25,
	meat_a = 25,
	meat_w = 25,
	drill = 25,
	medikit = 25,
	medikit = 25,
	bandage = 125,
	gps = 25,
	fishingrod = 25,
	Cottageleaves_box = 25,
	marijuana = 25,
	WEAPON_SMG = 0,
	WEAPON_CARBINERIFLE = 0,
	WEAPON_SPECIALCARBINE = 0,
	WEAPON_ASSAULTRIFLE = 0,
	WEAPON_PUMPSHOTGUN = 0,
	WEAPON_PISTOL = 0,
	WEAPON_APPISTOL = 0,
	WEAPON_MACHINEPISTOL = 0,
	WEAPON_COMBATPISTOL = 0,
	gauze = 25,
	hifi = 25,
	rolpaper = 100,
	drugbags = 10,
	hqscale = 1000
}
Config.Locations = { -- Some Shop NPCs
	{ x = -705.93,  y = -914.33,  z = 18.22, heading = 81.50 },    -- LT Gasoline1
	{ x = -47.14,   y = -1758.82, z = 28.42, heading = 46.58 },    -- LT Gasoline2
	{ x = 2678.57,  y = 3278.88,  z = 54.24, heading = 337.70 },    -- 24/7 Freeway
	{ x = 1960.20,  y = 3739.33,  z = 31.34, heading = 296.50 },    -- 24/7 Sandy Shores
	{ x = 1133.87,  y = -983.21,  z = 45.42, heading = 274.80 },    -- EL Rancho Robs Li
	{ x = 24.20,    y = -1347.60, z = 28.50, heading = 271.32 },    -- Strawberry 24/7
	{ x = 1165.09,  y = -323.51,  z = 69.21, heading = 93.72 },    -- LT Gasoline3
	{ x = -1486.41, y = -377.33,  z = 39.16, heading = 138.12 },    -- Morningwood Robs Li
	{ x = 1165.15,  y = 2711.11,  z = 37.16, heading = 176.58 },    -- Route 68 Robs Li
	{ x = 2557.46,  y = 380.49,   z = 107.62,heading = 4.25 },    -- Mountains Freeway 24/7
	{ x = 1391.82,  y = 3606.29,  z = 33.98, heading = 204.25 },    -- Sandy Shores ACE
	{ x = 549.27,   y = 2671.82,  z = 41.16, heading = 100.35 },    -- Sandy Shores 24/7
	{ x = 1697.35,  y = 4923.32,  z = 41.06, heading = 332.42 },    -- Sandy Shores LT Gasoline4
	{ x = 1727.62,  y = 6415.18,  z = 34.04, heading = 241.98 },    -- Chilliad Freeway 24/7
	{ x = -3241.96, y = 999.86,   z = 11.83, heading = 4.68 },    -- cumash Freeway 24/7
	{ x = -3038.68, y = 584.38,   z = 6.91,  heading = 24.72 },    -- Ocean Freeway 24/7
	{ x = -2966.12, y = 391.35,   z = 14.04, heading = 77.04 },    -- Ocean Freeway LT Gasoline5
	{ x = -1819.51, y = 793.72,   z = 137.08,heading = 134.72 }    -- Ocean Freeway LT Gasoline5
}