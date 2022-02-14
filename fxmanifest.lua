fx_version 'cerulean'
game 'gta5'

description 'QB-HouseRobbery'
version '2.0.0'

ui_page 'html/index.html'
file 'html/index.html'

shared_scripts {
	'config.lua',
	'@qb-core/shared/locale.lua',
	'locales/en.lua'
}
client_scripts {
	'client/*.lua',
}
server_scripts {
	'server/*.lua',
}
dependencies {
	'qb-core',
	'qb-interior',
	'qb-weathersync'
}