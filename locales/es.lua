local Translations = {
    error = {
        ['missing_something'] = 'Parece que te falta algo...',
        ['not_enough_police'] = 'No hay suficiente policía..',
        ['door_open'] = 'La puerta ya esta abierta..',
        ['process_cancelled'] = 'Proceso cancelado..',
        ['didnt_work'] = 'No funcionó..',
        ['emty_box'] = 'La caja esta vacía..',
    },
    success = {
        ['worked'] = '¡Funcionó!',
    },
    info = {
        ['palert'] = 'Attempted House Robbery',
        ['henter'] = '~g~E~w~ - To Enter',
        ['hleave'] = '~g~E~w~ - To leave house',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = 'Searching..',
        ['hsempty'] = 'Empty..',
    },
    searching = {
        ['search_bcabinet'] = 'Search Bedside Cabinet',
        ['search_closet'] = 'Search Closet',
        ['search_chest'] = 'Search Chest',
        ['search_drawer'] = 'Search Drawers',
        ['search_cabinet'] = 'Night Stand Cabinet',
        ['search_kcabinet'] = 'Search through the kitchen cabinets',
        ['search_shelves'] = 'Search through shelves',
    }
}

if GetConvar('qb_locale', 'en') == 'es' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
