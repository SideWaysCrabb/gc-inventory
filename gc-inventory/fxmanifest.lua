fx_version 'adamant'

game 'gta5'

description "GC INVENTORY"

version "1.0"

ui_page "html/ui.html"

client_scripts {
  "@es_extended/locale.lua",
  "client/main.lua",
  "client/shop.lua",
  "client/glovebox.lua",
  "client/weapons.lua",
  "client/dumpster.lua",
  "client/trunk.lua",
  "client/player.lua",
  "client/beds.lua",
  "client/motels.lua",
  "client/disc-property.lua",
  "client/steal.lua",
  "common/weapons.lua",
  "locales/en.lua",
  "config.lua"
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  "@es_extended/locale.lua",
  "server/main.lua",
  "server/steal.lua",
  "common/weapons.lua",
  "locales/en.lua",
  "config.lua"
}

files {
  "html/ui.html",
  "html/css/ui.css",
  "html/css/jquery-ui.css",
  "html/js/inventory.js",
  "html/js/config.js",
  -- JS LOCALES
  "html/locales/cs.js",
  "html/locales/en.js",
  "html/locales/fr.js",
  -- IMAGES
  "html/img/bullet.png",
  "html/img/*.svg",
  "html/img/items/*.png",
  "html/img/*.png",
  -- ICONS
  "html/img/items/9mm_rounds.png",
  "html/img/items/alive_chicken.png",
  "html/img/items/armor.png",
  "html/img/items/assault_rifle_cartridge.png",
  "html/img/items/bandage.png",
  "html/img/items/beer.png",
  "html/img/items/binoculars.png",
  "html/img/items/black_money.png",
  "html/img/items/bread.png",
  "html/img/items/burger.png",
  "html/img/items/cash.png",
  "html/img/items/cigarett.png",
  "html/img/items/coffee.png",
  "html/img/items/cokebag.png",
  "html/img/items/cokekey.png",
  "html/img/items/Cola.png",
  "html/img/items/electronics.png",
  "html/img/items/energy.png",
  "html/img/items/fixkit.png",
  "html/img/items/id_card_f.png",
  "html/img/items/jewels.png",
  "html/img/items/lighter.png",
  "html/img/items/lockpick.png",
  "html/img/items/martini.png",
  "html/img/items/medikit.png",
  "html/img/items/methbag.png",
  "html/img/items/methkey.png",
  "html/img/items/opium.png",
  "html/img/items/opium_pooch.png",
  "html/img/items/pills.png",
  "html/img/items/plastic.png",
  "html/img/items/rhum.png",
  "html/img/items/scrap_metal.png",
  "html/img/items/secure_card.png",
  "html/img/items/shotgun_shells.png",
  "html/img/items/tacos.png",
  "html/img/items/tequila.png",
  "html/img/items/tuning_laptop.png",
  "html/img/items/vodka.png",
  "html/img/items/water.png",
  "html/img/items/WEAPON_BAT.png",
  "html/img/items/WEAPON_CARBINERIFLE.png",
  "html/img/items/WEAPON_COMBATPISTOL.png",
  "html/img/items/WEAPON_FIREEXTINGUISHER.png",
  "html/img/items/WEAPON_FLASHLIGHT.png",
  "html/img/items/WEAPON_MACHETE.png",
  "html/img/items/WEAPON_NIGHTSTICK.png",
  "html/img/items/WEAPON_PISTOL.png",
  "html/img/items/WEAPON_PUMPSHOTGUN.png",
  "html/img/items/WEAPON_STUNGUN.png",
  "html/img/items/whisky.png",
  "html/img/items/Diamond_Casino_Chips.png",
  "html/img/items/joint.png",
  "html/img/items/weed.png",
  "html/img/items/washkey.png",
  "html/img/items/2ct_gold_chain.png",
  "html/img/items/5ct_gold_chain.png",
  "html/img/items/8ct_gold_chain.png",
  "html/img/items/10ct_gold_chain.png",
  "html/img/items/advancedlockpick.png",
  "html/img/items/apple_iphone.png",
  "html/img/items/battery.png",
  "html/img/items/breadboard.png",
  "html/img/items/casio_watch.png",
  "html/img/items/clutch.png",
  "html/img/items/copper.png",
  "html/img/items/drill_bit.png",
  "html/img/items/electronic_kit.png",
  "html/img/items/fuse.png",
  "html/img/items/gameboy.png",
  "html/img/items/glass.png",
  "html/img/items/goldbars.png",
  "html/img/items/lsd.png",
  "html/img/items/nokia_phone.png",
  "html/img/items/rolling_paper.png",
  "html/img/items/rubber.png",
  "html/img/items/samsung_s8.png",
  "html/img/items/screen.png",
  "html/img/items/steel.png",
  "html/img/items/weed_pooch.png",
  "html/img/items/white_pearl.png",
  "html/img/items/sunglasses.png",
  "html/img/items/nitro.png",
  "html/img/items/gadget_parachute.png"
}

server_script 'server.lua'
