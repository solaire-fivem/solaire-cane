fx_version "cerulean"

description "A simple script that allows you to use a cane"
author "Solaire"
version '1.1.0'
repository 'https://github.com/solaire-fivem/solaire-cane'

lua54 'yes'

game "gta5"

shared_script "config.lua"

client_scripts {
  "bridge/framework/qb/core.lua",
  "functions.lua",
  "events.lua",
  "bridge/framework/qb/client.lua",
  "bridge/framework/qbx/client.lua",
  "bridge/notify/*",
}

server_scripts {
  "bridge/framework/qb/core.lua",
  "bridge/framework/qb/server.lua",
  "bridge/framework/qbx/server.lua",
}

files {
    'stream/solaire_walking_stick.ytd',
    'stream/solaire_walking_stick.ytyp',
    'stream/prop_solaire_walking_stick.ydr'
}

data_file 'DLC_ITYP_REQUEST' 'stream/solaire_walking_stick.ytyp'