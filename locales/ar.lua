local Translations = {
    error = {
        ['missing_something'] = 'يبدو أنك تفتقد شيئًا ما',
        ['not_enough_police'] = 'لا يوجد ما يكفي من الشرطة',
        ['door_open'] = 'الباب مفتوح بالفعل',
        ['process_cancelled'] = 'تم الالغاء',
        ['didnt_work'] = 'إنها لا تعمل',
        ['emty_box'] = 'الصندوق فارغ',
    },
    success = {
        ['worked'] = 'تم',
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

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
