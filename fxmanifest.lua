fx_version "cerulean"

description "A simple script that allows you to use a cane"
author "Solaire"
version '1.0.0'
repository 'https://github.com/solaire-fivem/solaire-cane'

lua54 'yes'

game "gta5"

shared_script "config.lua"

client_scripts {
  "functions.lua",
  "events.lua",
  "bridge/framework/qb/client.lua",
  "bridge/framework/qbx/client.lua",
  "bridge/notify/*",
}

server_scripts {
  "bridge/framework/qb/server.lua",
  "bridge/framework/qbx/server.lua",
}