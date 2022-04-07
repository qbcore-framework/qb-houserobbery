local Translations = {
    error = {
        ["missing_something"] = "Parece que te está a faltar algo...",
        ["not_enough_police"] = "Policia Insuficiente...",
        ["door_open"] = "Esta porta já está aberta...",
        ["process_cancelled"] = "Processo Cancelado...",
        ["didnt_work"] = "Não funcionou...",
        ["emty_box"] = "A caixa está vazia...",
    },
    success = {
        ["worked"] = "Funcionou!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})
