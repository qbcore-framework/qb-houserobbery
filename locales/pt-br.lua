local Translations = {
    error = {
        ["missing_something"] = "Parece que você está esquecendo algo...",
        ["not_enough_police"] = "Não há policiais suficientes...",
        ["door_open"] = "A porta já está aberta...",
        ["process_cancelled"] = "Processo cancelado...",
        ["didnt_work"] = "Não funcionou...",
        ["emty_box"] = "A caixa está vazia...",
        ["not_allowed_time"] = "Você não pode fazer isso neste horário."
    },
    success = {
        ["worked"] = "Funcionou!",
    },
    info = {
        ["palert"] = "Tentativa de Roubo Residencial",
        ["henter"] = "~g~E~w~ - Para Entrar",
        ["hleave"] = "~g~E~w~ - Para sair da casa",
        ["aint"] = "~g~E~w~ - ",
        ["hsearch"] = "Procurando...",
        ["hsempty"] = "Vazio...",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
