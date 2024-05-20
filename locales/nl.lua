local Translations = {
    error = {
        ['missing_something'] = 'Het lijkt erop dat je iets mist...',
        ['not_enough_police'] = 'Niet genoeg politie..',
        ['door_open'] = 'De deur is al open..',
        ['process_cancelled'] = 'Proces geannuleerd..',
        ['didnt_work'] = 'Het is niet gelukt..',
        ['emty_box'] = 'De doos is leeg..',
    },
    success = {
        ['worked'] = 'Het is gelukt!',
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

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
