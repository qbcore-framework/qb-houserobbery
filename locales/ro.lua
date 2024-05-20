local Translations = {
    error = {
        ['missing_something'] = 'Se pare ca-ti lipseste ceva...',
        ['not_enough_police'] = 'Insuficiente forte de ordine disponibile..',
        ['door_open'] = 'Usa este deja deschisa..',
        ['process_cancelled'] = 'Actiune anulata..',
        ['didnt_work'] = 'Se pare ca nu a functionat..',
        ['emty_box'] = 'Nu am gasit nimic, cutia e goala..',
    },
    success = {
        ['worked'] = 'Excelent, a functionat!',
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

if GetConvar('qb_locale', 'en') == 'ro' then
    Lang = Lang or Locale:new({
        phrases = Translations,
        warnOnMissing = true
    })
end
