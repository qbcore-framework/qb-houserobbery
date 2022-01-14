local Translations = {
    error = {
        ["missing_something"] = "Parece que te está a faltar alguma coisa..",
        ["not_enough_police"] = "Agentes da autoridade insuficientes..",
        ["door_open"] = "Esta porta já está aberta..",
        ["process_cancelled"] = "Processo Cancelado..",
        ["didnt_work"] = "Não funcionou..",
        ["emty_box"] = "A Caixa Está Vazia..",
    },
    success = {
        ["worked"] = "Funcionou!",
    }
}
Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
