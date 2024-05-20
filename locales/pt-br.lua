local Translations = {
    error = {
        ['missing_something'] = 'Parece que você está esquecendo algo...',
        ['not_enough_police'] = 'Não há policiais suficientes...',
        ['door_open'] = 'A porta já está aberta...',
        ['process_cancelled'] = 'Processo cancelado...',
        ['didnt_work'] = 'Isso não funcionou...',
        ['empty_box'] = 'A caixa está vazia...',
        ['not_allowed_time'] = 'Você não pode fazer isso neste horário.',
    },
    success = {
        ['worked'] = 'Funcionou!',
    },
    info = {
        ['palert'] = 'Tentativa de Roubo de Casa',
        ['henter'] = '~g~E~w~ - Entrar',
        ['hleave'] = '~g~E~w~ - Sair da casa',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = 'Procurando...',
        ['hsempty'] = 'Vazio...',
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


if GetConvar('qb_locale', 'en') == 'pt-br' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
