--[[
Romanian base language translation for qb-houserobbery
Translation done by wanderrer (Martin Riggs#0807 on Discord)
]]--
local Translations = {
    error = {
        ["missing_something"] = "Se pare ca-ti lipseste ceva...",
        ["not_enough_police"] = "Insuficiente forte de ordine disponibile..",
        ["door_open"] = "Usa este deja deschisa..",
        ["process_cancelled"] = "Actiune anulata..",
        ["didnt_work"] = "Se pare ca nu a functionat..",
        ["emty_box"] = "Nu am gasit nimic, cutia e goala..",
    },
    success = {
        ["worked"] = "Excelent, a functionat!",
    },
    info = {
        ["palert"] = "Tentativa de jaf",
        ["henter"] = "~g~E~w~ - Intra in casa",
        ["hleave"] = "~g~E~w~ - Iesi din casa",
        ["aint"] = "~g~E~w~ - ", -- interaction to search the furniture
        ["hsearch"] = "Scotocesti...",
        ["hsempty"] = "Nimic...",

    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})
