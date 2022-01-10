local Translations = {
    error = {
        ["missing_something"] = "Il vous manque quelque-chose...",
        ["not_enough_police"] = "Il n\'y a pas assez de policiers..",
        ["door_open"] = "La porte est déjà ouverte..",
        ["process_cancelled"] = "Action annulée..",
        ["didnt_work"] = "Ça n'a pas marché..",
        ["emty_box"] = "La boite est vide..",
    },
    success = {
        ["worked"] = "Ça a marché !",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true}) 
