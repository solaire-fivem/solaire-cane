# Solaire Cane

*A lightweight FiveM script that features multiple cane items*

<img width="1280" alt="Preview" src="https://github.com/user-attachments/assets/55cd92a1-2eda-4ceb-8df7-44b38e57b5f7" />

## Features
- Equip and unequip a cane item with custom walk style
- Two different cane's for you to choose from with the ability to add more
- Automatically removes cane when entering a vehicle or dropping the item
- Disables melee, sprinting, and jumping while cane is equipped
- Multi-notification support: `qb-core`, `qbox`, `esx_notify`, `ox_lib`, `okokNotify`

## Supported Frameworks
- [QBCore](https://github.com/qbcore-framework/qb-core)
- [QBox](https://github.com/Qbox-project/qbx_core)
- [ESX](https://github.com/esx-framework/esx_core) (**Note:** `esx_inventory` is **NOT** supported currently)

## Installation
1. Download or clone this repository into your FiveM resources folder.
2. Add the cane item to either `qb-inventory` or `ox_inventory` inventory specific instructions below
3. Add `ensure solaire-cane` to your server.cfg.
> [!IMPORTANT]  
> Make sure you change `Config.Framework` to your server's framework and `Config.NotificationSystem` to your server's notification system or the script will not work!

## Inventory Specific Instructions
### qb-inventory:
1. Paste the code below in your `qb-core/shared/items.lua` to create the two cane items
```lua
-- Solaire Cane
cane                                    = {['name'] = 'cane',                                   ['label'] = 'Lester\'s Cane',               ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'cane.png',                             ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = "Give lester his cane back you animal!" },
walking_stick                           = {['name'] = 'walking_stick',                          ['label'] = 'Walking Stick',                ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'walking_stick.png',                    ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = "For when you want to look wise, threaten pigeons, or just poke things you shouldn't" },
staff                                   = {['name'] = 'staff',                                  ['label'] = 'Staff',                        ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'staff.png',                            ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = "Stolen from the great wizard yibtag" },
```
2. Add the images in the `inventory-images` folder into `qb-inventory/html/images`

### ox_inventory:
1. Paste the code below in your `ox_inventory/data/items.lua` to create the two cane items
```lua
-- Solaire Cane
["cane"] = {
    label = "Lester's Cane",
    weight = 500,
    stack = true,
    close = false,
    description = "Give lester his cane back you animal!",
    client = {
        image = "cane.png",
    }
},
["walking_stick"] = {
    label = "Walking Stick",
    weight = 500,
    stack = true,
    close = false,
    description = "For when you want to look wise, threaten pigeons, or just poke things you shouldn't",
    client = {
        image = "walking_stick.png",
    }
},
["staff"] = {
    label = "Staff",
    weight = 500,
    stack = true,
    close = false,
    description = "A sturdy staff for support and style",
    client = {
        image = "staff.png",
    }
},
```
2. Add the images in the `inventory-images` folder into `ox_inventory/web/images`
## Configuration
Edit `config.lua` to set your framework, notification system, cane item name, model, walk style, and other options:
```lua
Config = {}

-- Framework & Notify
Config.Framework = "qb" -- Currently supported frameworks, ["qb", "qbx", "esx"]
Config.NotificationSystem = "qb" -- Currently supported notify systems, ["qb", "qbx", "esx_notify", "ox_lib", "okok"]

-- Cane settings
Config.CaneItems = {"cane", "walking_stick", "staff"} -- Cane items if you are adding more canes make sure you update this with the item name
Config.WalkStyle = "move_heist_lester"

-- Animation settings
Config.AttachmentBone = 57005
Config.TransitionSpeed = 0.7 -- The time in seconds it takes to transition between walk styles

-- Miscellaneous
Config.Debug = false -- Enables debug logging in the F8 console
```

## Attributions
[APU - Animation & Prop Utility (Case you are the goat)](https://github.com/playingintraffic/apu)<br>
[MrNewb - Thank you for the advice](https://github.com/MrNewb)<br>
[Yibtag - The legend who made the custom prop](https://github.com/Yibtag)