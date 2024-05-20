local Translations = {
    error = {
        ['missing_something'] = 'Det verkar som att du saknar något...',
        ['not_enough_police'] = 'Inte tillräckligt med poliser..',
        ['door_open'] = 'Dörren är redan öppen..',
        ['process_cancelled'] = 'Process avbruten..',
        ['didnt_work'] = 'Det fungerade inte..',
        ['emty_box'] = 'Lådan är tom..',
    },
    success = {
        ['worked'] = 'Det fungerade!',
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

if GetConvar('qb_locale', 'en') == 'sv' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
