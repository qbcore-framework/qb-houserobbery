local Translations = {
    error = {
        ['missing_something'] = 'Sembra che ti manchi qualcosa...',
        ['not_enough_police'] = "Non c'è abbastanza polizia..",
        ['door_open'] = 'La porta è già aperta..',
        ['process_cancelled'] = 'Processo Annullato..',
        ['didnt_work'] = 'Non ha funzionato..',
        ['emty_box'] = 'La scatola è vuota..',
    },
    success = {
        ['worked'] = 'Ha funzionato!',
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

if GetConvar('qb_locale', 'en') == 'it' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
