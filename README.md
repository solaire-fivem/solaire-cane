# Solaire HUD

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
### qb-inventory:
```lua
cane  = {['name'] = 'cane',                                   ['label'] = 'Walking Cane',                 ['weight'] = 500,       ['type'] = 'item',      ['image'] = 'cane.png',                             ['unique'] = false, ['useable'] = true,     ['shouldClose'] = false,   ['combinable'] = nil,     ['description'] = 'A walking cane to help with mobility' },
```
### ox_inventory:
```lua
["cane"] = {
    label = "Walking Cane",
    weight = 500,
    stack = true,
    close = false,
    description = "A walking cane to help with mobility",
    client = {
        image = "cane.png",
    }
},
```
4. Add `ensure solaire-cane` to your server.cfg.
5. Configure it to match your server's framework and notification system

## Configuration
Edit `config.lua` to set your framework, notification system, cane item name, model, walk style, and other options:
```lua
Config = {}

-- Framework & Notify
Config.Framework = "qb" -- Currently supported frameworks, ["qb", "qbx"]
Config.NotificationSystem = "qb" -- Currently supported notify systems, ["qb", "qbx", "ox_lib", "okok"]

-- Cane settings
Config.CaneItem = "cane"
Config.CaneModel = "prop_cs_walking_stick"
Config.WalkStyle = "move_heist_lester"

-- Animation settings
Config.AttachmentBone = 57005
Config.AttachmentOffset = {
    x = 0.15,
    y = 0.0,
    z = -0.02,
    xRotation = 0.0,
    yRotation = -90.0,
    zRotation = 0.0
}
Config.TransitionSpeed = 0.7 -- The time in seconds it takes to transition between walk styles

-- Miscellaneous
Config.Debug = true -- Enables debug logging in the F8 console
```

## Usage
- Obtain the cane item in your inventory.
- Use the item to equip the cane and activate the walk style.
- The cane will be removed automatically if you enter a vehicle or drop the item.
- While equipped, melee, sprinting, and jumping are disabled for realism.

## Attributions
[APU - Animation & Prop Utility (Case you are the goat)](https://github.com/playingintraffic/apu)<br>
[M_Walkingstick (I used the prop image used by them)](https://github.com/marcinhuu/m-Walkingstick)


---
## FiveM Database Seal Of Approval 


### Solaire As a creator has been awarded the 5DB Seal of Approval. 

[Check their Seal Of Approval Out](https://fivemdb.net/soa/solaire)

<a href="https://fivemdb.net/soa/solaire">
  <img width="240" height="240" alt="2" src="https://zwrks.com/cdn/FiveMDB/soa.png" />
</a>
