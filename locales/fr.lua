local Translations = {
    error = {
        ['missing_something'] = "Il semble qu'il te manque quelque chose...",
        ['not_enough_police'] = 'Pas assez de policiers..',
        ['door_open'] = 'La porte est déjà ouverte..',
        ['process_cancelled'] = 'Processus annulé..',
        ['didnt_work'] = "Cela n'a pas fonctionné..",
        ['emty_box'] = 'La boîte est vide..',
    },
    success = {
        ['worked'] = 'Ça a marché!',
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

if GetConvar('qb_locale', 'en') == 'fr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
