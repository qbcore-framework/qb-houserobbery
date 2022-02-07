local Translations = {
    error = {
        ["missing_something"] = "Dir fehlt noch etwas...",
        ["not_enough_police"] = "Es sind nicht genug Polizisten im Dienst..",
        ["door_open"] = "Die Tür ist bereits offen..",
        ["process_cancelled"] = "Abgebrochen..",
        ["didnt_work"] = "Fehlgeschlagen..",
        ["emty_box"] = "Die Box ist leer..",
    },
    success = {
        ["worked"] = "Es hat geklappt!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})
