local Translations = {
    error = {
        ["missing_something"] = "Det lader til at du mangler noget...",
        ["not_enough_police"] = "Ikke nok betjente..",
        ["door_open"] = "Døren er allerede åbn..",
        ["process_cancelled"] = "Handling afbrudt..",
        ["didnt_work"] = "Det virkede ikke..",
        ["emty_box"] = "Kassen er tom..",
        ["not_allowed_time"] = "Det kan du ikke på dette tidspunkt af dagen."
    },
    success = {
        ["worked"] = "Det virkede!",
    },
    info = {
        ["palert"] = "Forsøgt hjemmerøveri",
        ["henter"] = "~g~E~w~ - For at tilgå",
        ["hleave"] = "~g~E~w~ - For at forlade",
        ["aint"] = "~g~E~w~ - ",
        ["hsearch"] = "Søger..",
        ["hsempty"] = "Tomt..",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
