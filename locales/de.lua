local Translations = {
    error = {
        ['missing_something'] = 'Es sieht so aus, als würdest du etwas vermissen...',
        ['not_enough_police'] = 'Nicht genug Polizei..',
        ['door_open'] = 'Die Tür ist bereits offen..',
        ['process_cancelled'] = 'Prozess abgebrochen..',
        ['didnt_work'] = 'Es hat nicht funktioniert..',
        ['emty_box'] = 'Die Box ist leer..',
        ['not_allowed_time'] = 'Du kannst das zu dieser Tageszeit nicht tun.'
    },
    success = {
        ['worked'] = 'Es hat funktioniert!',
    },
    info = {
        ['palert'] = 'Versuchter Hauseinbruch',
        ['henter'] = '~g~E~w~ - Um einzutreten',
        ['hleave'] = '~g~E~w~ - Um das Haus zu verlassen',
        ['aint'] = '~g~E~w~ - ',
        ['hsearch'] = 'Durchsuche..',
        ['hsempty'] = 'Leer..',
    },
    searching = {
        ['search_bcabinet'] = 'Nachtschränkchen durchsuchen',
        ['search_closet'] = 'Kleiderschrank durchsuchen',
        ['search_chest'] = 'Truhe durchsuchen',
        ['search_drawer'] = 'Schubladen durchsuchen',
        ['search_cabinet'] = 'Nachttisch durchsuchen',
        ['search_kcabinet'] = 'Durchsuche die Küchenschränke',
        ['search_shelves'] = 'Durchsuche die Regale',
    }
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
