local Translations = {
    error = {
        ["missing_something"] = "Tundub, et sul on midagi puudu...",
        ["not_enough_police"] = "Pole piisavalt politseinike..",
        ["door_open"] = "Uks on juba lahti..",
        ["process_cancelled"] = "Protsess tühistatud..",
        ["didnt_work"] = "Ebaõnnestus..",
        ["emty_box"] = "Kast on tühi..",
    },
    success = {
        ["worked"] = "Õnnestus!",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})