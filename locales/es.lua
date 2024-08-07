local Translations = {
    error = {
        ['missing_something'] = 'Parece que te falta algo...',
        ['not_enough_police'] = 'No hay suficiente policía..',
        ['door_open'] = 'La puerta ya esta abierta..',
        ['process_cancelled'] = 'Proceso cancelado..',
        ['didnt_work'] = 'No funcionó..',
        ['emty_box'] = 'La caja esta vacía..',
        ['not_allowed_time'] = "No puedes hacer eso a esta hora del día."
    },
    success = {
        ['worked'] = '¡Funcionó!',
    },
    info = {
        ['palert'] = 'Intento de robo de la casa',
        ['henter'] = '~g~E~w~ - Para Entrar',
        ['hleave'] = '~g~E~w~ - Para salir de casa',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = 'Buscando..',
        ['hsempty'] = 'Vacío..',
    },
    searching = {
        ['search_bcabinet'] = 'Buscar en la mesita de noche',
        ['search_closet'] = 'Buscar en el armario',
        ['search_chest'] = 'Buscar en los cajones',
        ['search_drawer'] = 'Buscar en los cajones',
        ['search_cabinet'] = 'Buscar en los cajones',
        ['search_kcabinet'] = 'Buscar en los cajones de la cocina',
        ['search_shelves'] = 'Buscar en las  estanterías',
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
