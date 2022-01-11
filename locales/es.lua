local Translations = {
    error = {
        ["missing_something"] = "Parece que te falta algo...",
        ["not_enough_police"] = "No hay suficiente policía..",
        ["door_open"] = "La puerta ya esta abierta..",
        ["process_cancelled"] = "Proceso cancelado..",
        ["didnt_work"] = "No funcionó..",
        ["emty_box"] = "La caja esta vacía..",
    },
    success = {
        ["worked"] = "¡Funcionó!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})
