# Solaire Cane

A lightweight FiveM script that allows players to use a cane item with custom walk style, animations, and notifications. Supports QBCore and QBox frameworks, and multiple notification systems. <br>

<img width="1920" height="1080" alt="Preview" src="https://github.com/user-attachments/assets/55cd92a1-2eda-4ceb-8df7-44b38e57b5f7" />

[Installation Video](https://youtu.be/8K40l1eKbh8?feature=shared)
## Features
- Equip and unequip a cane item with custom walk style
- Cane model attachment and animation
- Automatically removes cane when entering a vehicle or dropping the item
- Disables melee, sprinting, and jumping while cane is equipped
- Multi-framework support: QBCore and QBox
- Multi-notification support: QBCore, QBox, ox_lib, okokNotify

## Supported Frameworks
- [QBCore](https://github.com/qbcore-framework/qb-core)
- [QBox](https://github.com/Qbox-project/qbx_core)

## Installation
1. Download or clone this repository into your FiveM resources folder.
2. Add the cane item to either qb-inventory or ox_inventory:
#### qb-inventory:
1. Paste the code below in your qb-core/shared/items.lua to create the two cane items
```lua
-- Solaire Cane
cane                                    = {['name'] = 'cane',                                   ['label'] = 'Lester\'s Cane',               ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'cane.png',                                      ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = 'Give lester his cane back you animal!' },
walking_stick                           = {['name'] = 'walking_stick',                          ['label'] = 'Walking Stick',                ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'walking_stick.png',                             ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = "For when you want to look wise, threaten pigeons, or just poke things you shouldn't" },
```
2. Add the images in the `inventory-images` folder into `qb-inventory/html/images`

#### ox_inventory:
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
```
2. Add the images in the `inventory-images` folder into `ox_inventory/web/images`

3. Add `ensure solaire-cane` to your server.cfg.
4. Configure the resource to match your server's framework and notification system

## Configuration
Edit `config.lua` to set your framework, notification system, cane item name, model, walk style, and other options:
```lua
Config = {}

-- Framework & Notify
Config.Framework = "qb" -- Currently supported frameworks, ["qb", "qbx"]
Config.NotificationSystem = "ox_lib" -- Currently supported notify systems, ["qb", "qbx", "ox_lib", "okok"]

-- Cane settings
Config.CaneItems = {"cane", "walking_stick"} -- Cane items
Config.WalkStyle = "move_heist_lester"

-- Animation settings
Config.AttachmentBone = 57005
Config.TransitionSpeed = 0.7 -- The time in seconds it takes to transition between walk styles

-- Miscellaneous
Config.Debug = false -- Enables debug logging in the F8 console
```

## Usage
- Obtain the cane item in your inventory.
- Use the item to equip the cane and activate the walk style.
- The cane will be removed automatically if you enter a vehicle or drop the item.
- While equipped, melee, sprinting, and jumping are disabled for realism.

## Attributions
[APU - Animation & Prop Utility (Case you are the goat)](https://github.com/playingintraffic/apu)<br>
[MrNewb - Thank you for the advice](https://github.com/MrNewb)<br>
[Yibtag - The legend who made the custom prop](https://github.com/Yibtag)
