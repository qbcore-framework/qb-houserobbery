local Translations = {
    error = {
        ['missing_something'] = 'Näyttää siltä että sinulta puuttuu jotain...',
        ['not_enough_police'] = 'Ei tarpeaksi poliiseita..',
        ['door_open'] = 'Tämä ovi on jo avattu..',
        ['process_cancelled'] = 'Peruttu..',
        ['didnt_work'] = 'Eipä toiminut..',
        ['emty_box'] = 'The Box Is Empty..',
    },
    success = {
        ['worked'] = 'Se toimi!',
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

if GetConvar('qb_locale', 'en') == 'fi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
