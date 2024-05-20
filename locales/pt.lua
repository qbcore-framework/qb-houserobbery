local Translations = {
    error = {
        ['missing_something'] = 'Parece que te está a faltar algo...',
        ['not_enough_police'] = 'Policia Insuficiente...',
        ['door_open'] = 'Esta porta já está aberta...',
        ['process_cancelled'] = 'Processo Cancelado...',
        ['didnt_work'] = 'Não funcionou...',
        ['emty_box'] = 'A caixa está vazia...',
    },
    success = {
        ['worked'] = 'Funcionou!',
    },
    info = {
        ['palert'] = 'Tentativa de Roubo a Residência',
        ['henter'] = '~g~E~w~ - Para entrar',
        ['hleave'] = '~g~E~w~ - Para sair',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = 'Procurando..',
        ['hsempty'] = 'Vazio..',
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

if GetConvar('qb_locale', 'en') == 'pt' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
