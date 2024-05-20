local Translations = {
    error = {
        ['missing_something'] = 'Birşeyleri kaçırıyormuşsun gibi görünüyor...',
        ['not_enough_police'] = 'Yeterli polis yok..',
        ['door_open'] = 'Kapı zaten açık..',
        ['process_cancelled'] = 'İşlem iptal edildi..',
        ['didnt_work'] = 'İşe yaramadı..',
        ['emty_box'] = 'Kutu boş..',
    },
    success = {
        ['worked'] = 'İşe yaradı!',
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

if GetConvar('qb_locale', 'en') == 'tr' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
