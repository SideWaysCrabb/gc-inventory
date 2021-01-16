local shopData = nil

Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local Licenses = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        player = PlayerPedId()
        coords = GetEntityCoords(player)
        if IsInRegularShopZone(coords) or IsInTacoShopZone(coords) or IsInPrisonShopZone(coords) or IsInWeaponShopZone(coords) or IsInPoliceArmouryZone(coords) or IsInStripClubShopZone(coords) or IsInYellowJackShopZone(coords) or IsInBahamaMamasShopZone(coords) or IsInTequiLaLaShopZone(coords) or IsInSplitSideComedyShopZone(coords) or IsInDiamondCasinoShopZone(coords) or IsInYouToolShopZone(coords) or IsInHotDogShopZone(coords) then
            if IsInRegularShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("Regular")
                    Citizen.Wait(2000)
                end
            end
            if IsInTacoShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("Taco")
                    Citizen.Wait(2000)
                end
            end
            if IsInPrisonShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("Prison")
                    Citizen.Wait(2000)
                end
            end
            if IsInYouToolShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("YouTool")
                    Citizen.Wait(2000)
                end
            end
            if IsInHotDogShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("HotDog")
                    Citizen.Wait(2000)
                end
            end
            if IsInWeaponShopZone(coords) then
				if IsControlJustReleased(0, 38) then
					if Config.UseLicense == true then
						ESX.TriggerServerCallback('esx_license:checkLicense', function(hasWeaponLicense)
							if hasWeaponLicense then
								OpenShopInv('Weaponshop')
								Citizen.Wait(2000)
							else
								exports['mythic_notify']:DoHudText('error', _U('license_check_fail'))
							end
						end, GetPlayerServerId(PlayerId()), Config.License.Weapon)
					else
						OpenShopInv('Weaponshop')
						Citizen.Wait(2000)
					end
				end
			end
            if IsInPoliceArmouryZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("PoliceArmoury")
                    Citizen.Wait(2000)
                end
            end
            if IsInStripClubShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("StripClubShop")
                    Citizen.Wait(2000)
                end
            end
            if IsInYellowJackShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("YellowJackShop")
                    Citizen.Wait(2000)
                end
            end
            if IsInBahamaMamasShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("BahamaMamasShop")
                    Citizen.Wait(2000)
                end
            end
            if IsInTequiLaLaShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("TequiLaLaShop")
                    Citizen.Wait(2000)
                end
            end
            if IsInSplitSideComedyShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("SplitSideComedyShop")
                    Citizen.Wait(2000)
                end
            end
            if IsInDiamondCasinoShopZone(coords) then
                if IsControlJustReleased(0, Keys["E"]) then
                    OpenShopInv("DiamondCasinoShop")
                    Citizen.Wait(2000)
                end
            end
        end
    end
end)

function OpenShopInv(shoptype)
    --text = "Store"
if shoptype == 'Regular' then
    text = 'Shop'
elseif shoptype == 'Taco' then
    text = 'Shop'    
elseif shoptype == 'YouTool' then
    text = 'Shop'
elseif shoptype == 'HotDog' then
    text = 'Shop'
elseif shoptype == 'Prison' then
    text = 'Shop'
elseif shoptype == 'WeaponShop' then
    text = 'Weapon Shop'
elseif shoptype == 'PoliceArmoury' then
    text = 'Police Armoury'
elseif shoptype == 'StripClubShop' then
    text = 'Shop'
elseif shoptype == 'YellowJackShop' then
    text = 'Shop'
elseif shoptype == 'TequiLaLaShop' then
    text = 'Shop'
elseif shoptype == 'SplitSideComedyShop' then
    text = 'Shop'
elseif shoptype == 'DiamondCasinoShop' then
    text = 'Shop'
else
    text = 'shop'
end
data = {text = text}
inventory = {}
    ESX.TriggerServerCallback("suku:getShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
        TriggerEvent("gc-inventory:openShopInventory", data, inventory)
    end, shoptype)
end

RegisterNetEvent("suku:OpenCustomShopInventory")
AddEventHandler("suku:OpenCustomShopInventory", function(type, shopinventory)
    text = "shop"
    data = {text = text}
    inventory = {}

    ESX.TriggerServerCallback("suku:getCustomShopItems", function(shopInv)
        for i = 1, #shopInv, 1 do
            table.insert(inventory, shopInv[i])
        end
        TriggerEvent("gc-inventory:openShopInventory", data, inventory)
    end, type, shopinventory)
end)

RegisterNetEvent("gc-inventory:openShopInventory")
AddEventHandler("gc-inventory:openShopInventory", function(data, inventory)
    setShopInventoryData(data, inventory, weapons)
    openShopInventory()
end)

function setShopInventoryData(data, inventory)
    shopData = data

    SendNUIMessage(
            {
                action = "setInfoText",
                text = data.text
            }
    )

    items = {}

    SendNUIMessage(
            {
                action = "setShopInventoryItems",
                itemList = inventory
            }
    )
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        player = GetPlayerPed(-1)
        coords = GetEntityCoords(player)

        if GetDistanceBetweenCoords(coords, Config.WeaponLiscence.x, Config.WeaponLiscence.y, Config.WeaponLiscence.z, true) < 3.0 then
            DrawText3Ds(Config.WeaponLiscence.x,  Config.WeaponLiscence.y, Config.WeaponLiscence.z , "Press ~b~[E]~s~ to Register License")
            if IsControlJustReleased(0, 38) then
                if Licenses['weapon'] == nil then
                    OpenBuyLicenseMenu()
                else
                    exports['mythic_notify']:SendAlert('error', 'You already have a Fire arms license!')
                end
                Citizen.Wait(2000)
            end
        end
    end
end)

function openShopInventory()
    loadPlayerInventory()
    isInInventory = true

    SendNUIMessage(
            {
                action = "display",
                type = "shop"
            }
    )

    SetNuiFocus(true, true)
end

RegisterNUICallback("TakeFromShop", function(data, cb)
    if IsPedSittingInAnyVehicle(playerPed) then
        return
    end

    if type(data.number) == "number" and math.floor(data.number) == data.number then
        TriggerServerEvent("suku:SellItemToPlayer", GetPlayerServerId(PlayerId()), data.item.type, data.item.name, tonumber(data.number))
    end

    Wait(150)
    loadPlayerInventory()

    cb("ok")
end
)

RegisterNetEvent("suku:AddAmmoToWeapon")
AddEventHandler("suku:AddAmmoToWeapon", function(hash, amount)
    AddAmmoToPed(PlayerPedId(), hash, amount)
end)

function IsInRegularShopZone(coords)
    RegularShop = Config.Shops.RegularShop.Locations
    for i = 1, #RegularShop, 1 do
        if GetDistanceBetweenCoords(coords, RegularShop[i].x, RegularShop[i].y, RegularShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInTacoShopZone(coords)
    TacoShop = Config.Shops.TacoShop.Locations
    for i = 1, #TacoShop, 1 do
        if GetDistanceBetweenCoords(coords, TacoShop[i].x, TacoShop[i].y, TacoShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInYouToolShopZone(coords)
    YouToolShop = Config.Shops.YouToolShop.Locations
    for i = 1, #YouToolShop, 1 do
        if GetDistanceBetweenCoords(coords, YouToolShop[i].x, YouToolShop[i].y, YouToolShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInHotDogShopZone(coords)
    HotDogShop = Config.Shops.HotDogShop.Locations
    for i = 1, #HotDogShop, 1 do
        if GetDistanceBetweenCoords(coords, HotDogShop[i].x, HotDogShop[i].y, HotDogShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInPrisonShopZone(coords)
    PrisonShop = Config.Shops.PrisonShop.Locations
    for i = 1, #PrisonShop, 1 do
        if GetDistanceBetweenCoords(coords, PrisonShop[i].x, PrisonShop[i].y, PrisonShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInWeaponShopZone(coords)
    WeaponShop = Config.Shops.WeaponShop.Locations
    for i = 1, #WeaponShop, 1 do
        if GetDistanceBetweenCoords(coords, WeaponShop[i].x, WeaponShop[i].y, WeaponShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInPoliceArmouryZone(coords)
    PoliceArmoury = Config.Shops.PoliceArmoury.Locations
    for i = 1, #PoliceArmoury, 1 do
        if GetDistanceBetweenCoords(coords, PoliceArmoury[i].x, PoliceArmoury[i].y, PoliceArmoury[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInStripClubShopZone(coords)
    StripClubShop = Config.Shops.StripClubShop.Locations
    for i = 1, #StripClubShop, 1 do
        if GetDistanceBetweenCoords(coords, StripClubShop[i].x, StripClubShop[i].y, StripClubShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInYellowJackShopZone(coords)
    YellowJackShop = Config.Shops.YellowJackShop.Locations
    for i = 1, #YellowJackShop, 1 do
        if GetDistanceBetweenCoords(coords, YellowJackShop[i].x, YellowJackShop[i].y, YellowJackShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInBahamaMamasShopZone(coords)
    BahamaMamasShop = Config.Shops.BahamaMamasShop.Locations
    for i = 1, #BahamaMamasShop, 1 do
        if GetDistanceBetweenCoords(coords, BahamaMamasShop[i].x, BahamaMamasShop[i].y, BahamaMamasShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInTequiLaLaShopZone(coords)
    TequiLaLaShop = Config.Shops.TequiLaLaShop.Locations
    for i = 1, #TequiLaLaShop, 1 do
        if GetDistanceBetweenCoords(coords, TequiLaLaShop[i].x, TequiLaLaShop[i].y, TequiLaLaShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInSplitSideComedyShopZone(coords)
    SplitSideComedyShop = Config.Shops.SplitSideComedyShop.Locations
    for i = 1, #SplitSideComedyShop, 1 do
        if GetDistanceBetweenCoords(coords, SplitSideComedyShop[i].x, SplitSideComedyShop[i].y, SplitSideComedyShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

function IsInDiamondCasinoShopZone(coords)
    DiamondCasinoShop = Config.Shops.DiamondCasinoShop.Locations
    for i = 1, #DiamondCasinoShop, 1 do
        if GetDistanceBetweenCoords(coords, DiamondCasinoShop[i].x, DiamondCasinoShop[i].y, DiamondCasinoShop[i].z, true) < 1.5 then
            return true
        end
    end
    return false
end

Citizen.CreateThread(function()
    player = GetPlayerPed(-1)
    coords = GetEntityCoords(player)
    for k, v in pairs(Config.Shops.RegularShop.Locations) do
        CreateBlip(vector3(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z ), "Convenience Store", 3.0, Config.Color, Config.ShopBlipID)
    end
    for k, v in pairs(Config.Shops.TacoShop.Locations) do
        CreateBlip(vector3(Config.Shops.TacoShop.Locations[k].x, Config.Shops.TacoShop.Locations[k].y, Config.Shops.TacoShop.Locations[k].z ), "The Taco Farmer", 3.0, Config.Color, Config.ShopBlipID)
    end
    for k, v in pairs(Config.Shops.YouToolShop.Locations) do
        CreateBlip(vector3(Config.Shops.YouToolShop.Locations[k].x, Config.Shops.YouToolShop.Locations[k].y, Config.Shops.YouToolShop.Locations[k].z ), "YouTool", 3.0, Config.Color, Config.ShopBlipID)
    end
    for k, v in pairs(Config.Shops.HotDogShop.Locations) do
        CreateBlip(vector3(Config.Shops.HotDogShop.Locations[k].x, Config.Shops.HotDogShop.Locations[k].y, Config.Shops.HotDogShop.Locations[k].z ), "Chihuahua HotDogs", 3.0, Config.Color, Config.ShopBlipID)
    end
    for k, v in pairs(Config.Shops.WeaponShop.Locations) do
        CreateBlip(vector3(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z), "Ammunation", 3.0, Config.WeaponColor, Config.WeaponShopBlipID)
    end
    for k, v in pairs(Config.Shops.StripClubShop.Locations) do
        CreateBlip(vector3(Config.Shops.StripClubShop.Locations[k].x, Config.Shops.StripClubShop.Locations[k].y, Config.Shops.StripClubShop.Locations[k].z), "StripClub", 3.0, Config.StripClubShopColor, Config.StripClubShopBlipID)
    end
    for k, v in pairs(Config.Shops.YellowJackShop.Locations) do
        CreateBlip(vector3(Config.Shops.YellowJackShop.Locations[k].x, Config.Shops.YellowJackShop.Locations[k].y, Config.Shops.YellowJackShop.Locations[k].z), "YellowJack", 3.0, Config.YellowJackShopColor, Config.YellowJackShopBlipID)
    end
    for k, v in pairs(Config.Shops.BahamaMamasShop.Locations) do
        CreateBlip(vector3(Config.Shops.BahamaMamasShop.Locations[k].x, Config.Shops.BahamaMamasShop.Locations[k].y, Config.Shops.BahamaMamasShop.Locations[k].z), "BahamaMamas", 3.0, Config.BahamaMamasShopColor, Config.BahamaMamasShopBlipID)
    end
    for k, v in pairs(Config.Shops.TequiLaLaShop.Locations) do
        CreateBlip(vector3(Config.Shops.TequiLaLaShop.Locations[k].x, Config.Shops.TequiLaLaShop.Locations[k].y, Config.Shops.TequiLaLaShop.Locations[k].z), "TequiLaLa", 3.0, Config.TequiLaLaShopColor, Config.TequiLaLaShopBlipID)
    end
    for k, v in pairs(Config.Shops.SplitSideComedyShop.Locations) do
        CreateBlip(vector3(Config.Shops.SplitSideComedyShop.Locations[k].x, Config.Shops.SplitSideComedyShop.Locations[k].y, Config.Shops.SplitSideComedyShop.Locations[k].z), "SplitSideComedy", 3.0, Config.SplitSideComedyShopColor, Config.SplitSideComedyShopBlipID)
    end
    for k, v in pairs(Config.Shops.DiamondCasinoShop.Locations) do
        CreateBlip(vector3(Config.Shops.DiamondCasinoShop.Locations[k].x, Config.Shops.DiamondCasinoShop.Locations[k].y, Config.Shops.DiamondCasinoShop.Locations[k].z), "DiamondCasino", 3.0, Config.DiamondCasinoShopColor, Config.DiamondCasinoShopBlipID)
    end
end)

Citizen.CreateThread(function()
    local sleep = 7
    while true do
        Citizen.Wait(sleep)
        player = PlayerPedId()
        coords = GetEntityCoords(player)
        if IsPedOnFoot(player) then
            for k, v in pairs(Config.Shops.RegularShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.RegularShop.Locations[k].x, Config.Shops.RegularShop.Locations[k].y, Config.Shops.RegularShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.TacoShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.TacoShop.Locations[k].x, Config.Shops.TacoShop.Locations[k].y, Config.Shops.TacoShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.TacoShop.Locations[k].x, Config.Shops.TacoShop.Locations[k].y, Config.Shops.TacoShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.TacoShop.Locations[k].x, Config.Shops.TacoShop.Locations[k].y, Config.Shops.TacoShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.YouToolShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.YouToolShop.Locations[k].x, Config.Shops.YouToolShop.Locations[k].y, Config.Shops.YouToolShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.YouToolShop.Locations[k].x, Config.Shops.YouToolShop.Locations[k].y, Config.Shops.YouToolShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.YouToolShop.Locations[k].x, Config.Shops.YouToolShop.Locations[k].y, Config.Shops.YouToolShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.HotDogShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.HotDogShop.Locations[k].x, Config.Shops.HotDogShop.Locations[k].y, Config.Shops.HotDogShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.HotDogShop.Locations[k].x, Config.Shops.HotDogShop.Locations[k].y, Config.Shops.HotDogShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.HotDogShop.Locations[k].x, Config.Shops.HotDogShop.Locations[k].y, Config.Shops.HotDogShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.PrisonShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.PrisonShop.Locations[k].x, Config.Shops.PrisonShop.Locations[k].y, Config.Shops.PrisonShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.WeaponShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.WeaponShop.Locations[k].x, Config.Shops.WeaponShop.Locations[k].y, Config.Shops.WeaponShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.PoliceArmoury.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.PoliceArmoury.Locations[k].x, Config.Shops.PoliceArmoury.Locations[k].y, Config.Shops.PoliceArmoury.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.PoliceArmoury.Locations[k].x, Config.Shops.PoliceArmoury.Locations[k].y, Config.Shops.PoliceArmoury.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.PoliceArmoury.Locations[k].x, Config.Shops.PoliceArmoury.Locations[k].y, Config.Shops.PoliceArmoury.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Armoury")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.StripClubShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.StripClubShop.Locations[k].x, Config.Shops.StripClubShop.Locations[k].y, Config.Shops.StripClubShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.StripClubShop.Locations[k].x, Config.Shops.StripClubShop.Locations[k].y, Config.Shops.StripClubShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.StripClubShop.Locations[k].x, Config.Shops.StripClubShop.Locations[k].y, Config.Shops.StripClubShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.YellowJackShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.YellowJackShop.Locations[k].x, Config.Shops.YellowJackShop.Locations[k].y, Config.Shops.YellowJackShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.YellowJackShop.Locations[k].x, Config.Shops.YellowJackShop.Locations[k].y, Config.Shops.YellowJackShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.YellowJackShop.Locations[k].x, Config.Shops.YellowJackShop.Locations[k].y, Config.Shops.YellowJackShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.BahamaMamasShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.BahamaMamasShop.Locations[k].x, Config.Shops.BahamaMamasShop.Locations[k].y, Config.Shops.BahamaMamasShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.BahamaMamasShop.Locations[k].x, Config.Shops.BahamaMamasShop.Locations[k].y, Config.Shops.BahamaMamasShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.BahamaMamasShop.Locations[k].x, Config.Shops.BahamaMamasShop.Locations[k].y, Config.Shops.BahamaMamasShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.TequiLaLaShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.TequiLaLaShop.Locations[k].x, Config.Shops.TequiLaLaShop.Locations[k].y, Config.Shops.TequiLaLaShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.TequiLaLaShop.Locations[k].x, Config.Shops.TequiLaLaShop.Locations[k].y, Config.Shops.TequiLaLaShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.TequiLaLaShop.Locations[k].x, Config.Shops.TequiLaLaShop.Locations[k].y, Config.Shops.TequiLaLaShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.SplitSideComedyShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.SplitSideComedyShop.Locations[k].x, Config.Shops.SplitSideComedyShop.Locations[k].y, Config.Shops.SplitSideComedyShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.SplitSideComedyShop.Locations[k].x, Config.Shops.SplitSideComedyShop.Locations[k].y, Config.Shops.SplitSideComedyShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.SplitSideComedyShop.Locations[k].x, Config.Shops.SplitSideComedyShop.Locations[k].y, Config.Shops.SplitSideComedyShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            for k, v in pairs(Config.Shops.DiamondCasinoShop.Locations) do
                local distance = GetDistanceBetweenCoords(coords, Config.Shops.DiamondCasinoShop.Locations[k].x, Config.Shops.DiamondCasinoShop.Locations[k].y, Config.Shops.DiamondCasinoShop.Locations[k].z, true)
                if distance < 10 then
                    DrawMarker(-1, Config.Shops.DiamondCasinoShop.Locations[k].x, Config.Shops.DiamondCasinoShop.Locations[k].y, Config.Shops.DiamondCasinoShop.Locations[k].z+1, 0, 0, 0, 0, 0, 0, 0.601, 1.0001, 0.2001, 255, 255, 255, 255, 0, 1, 0, 0, 0, 0, 0)
                    if distance < 3.0 then 
                        DrawText3Ds(Config.Shops.DiamondCasinoShop.Locations[k].x, Config.Shops.DiamondCasinoShop.Locations[k].y, Config.Shops.DiamondCasinoShop.Locations[k].z + 1.3, "Press [~g~E~w~] To Open The Shop")
                        near = true
                        break
                    end
                    near = true
                end
            end
            if not near then 
                sleep = 1500
            else
                sleep = 7
            end
            near = false
        else
            Citizen.Wait(1500)
        end
    end
end)

function DrawText3Ds(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)

    local scale = 0.3

    if onScreen then
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(true)
        AddTextComponentString(text)
        SetDrawOrigin(x,y,z, 0)
        DrawText(0.0, 0.0)
        local factor = (string.len(text)) / 370
        DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
        DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
        DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
        ClearDrawOrigin()
    end
end

function CreateBlip(coords, text, radius, color, sprite)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipColour(blip, color)
    SetBlipScale(blip, 0.6)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function()
    RequestModel(GetHashKey("a_f_y_bevhills_03"))
	
    while not HasModelLoaded(GetHashKey("a_f_y_bevhills_03")) do
        Wait(1)
    end
	
	if true then
		for _, item in pairs(Config.Locations) do
			local npc = CreatePed(4, 0x20C8012F, item.x, item.y, item.z, item.heading, false, true)
			
			SetEntityHeading(npc, item.heading)
			FreezeEntityPosition(npc, true)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
		end
    end
end)

RegisterNetEvent('suku:GetLicenses')
AddEventHandler('suku:GetLicenses', function (licenses)
    for i = 1, #licenses, 1 do
        Licenses[licenses[i].type] = true
    end
end)

function OpenBuyLicenseMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_license',{
        title = 'Register a License',
        elements = {
          {label = 'yes' ..' ($' .. Config.LicensePrice ..')', value = 'yes'},
          {label = 'no', value = 'no' },
     }}, function (data, menu)
        if data.current.value == 'yes' then
            TriggerServerEvent('suku:buyLicense')
        end
        menu.close()
    end, function (data, menu)
        menu.close()
    end)
end