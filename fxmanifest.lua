fx_version "cerulean"

description "A simple script that allows you to use a cane to change your walk style. Supports QBCore, QBox and ESX"
author "Solaire"
version '1.1.0'
repository 'https://github.com/solaire-fivem/solaire-cane'

lua54 'yes'

game "gta5"

shared_scripts {
  "config.lua",
  "bridge/framework/qb/core.lua",
  "bridge/framework/esx/core.lua",
}

client_scripts {
  "functions.lua",
  "events.lua",
  "bridge/framework/qb/client.lua",
  "bridge/framework/qbx/client.lua",
  "bridge/framework/esx/client.lua",
  "bridge/notify/*",
}

server_scripts {
  "bridge/framework/qb/server.lua",
  "bridge/framework/qbx/server.lua",
  "bridge/framework/esx/server.lua",
}

files {
    'stream/solaire_walking_stick.ytd',
    'stream/solaire_walking_stick.ytyp',
    'stream/prop_solaire_walking_stick.ydr'
}

data_file 'DLC_ITYP_REQUEST' 'stream/solaire_walking_stick.ytyp'