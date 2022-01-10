fx_version 'cerulean'
game 'gta5'

description 'QB-HouseRobbery'
version '1.0.0'

shared_scripts {
 'config.lua',
 '@qb-core/shared/locale.lua',
 'locales/en.lua'

}
client_script 'client/main.lua'
server_script 'server/main.lua'

lua54 'yes'