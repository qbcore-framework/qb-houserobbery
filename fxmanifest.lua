fx_version 'cerulean'
game 'gta5'

description 'QB-HouseRobbery'
version '1.0.0'

shared_scripts {
 'config.lua',
 'locales/en.lua',
 '@qb-core/shared/locale.lua'
}
client_script 'client/main.lua'
server_script 'server/main.lua'

lua54 'yes'