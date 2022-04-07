local Translations = {
    error = {
        ["missing_something"] = "Birşeyleri kaçırıyormuşsun gibi görünüyor...",
        ["not_enough_police"] = "Yeterli polis yok..",
        ["door_open"] = "Kapı zaten açık..",
        ["process_cancelled"] = "İşlem iptal edildi..",
        ["didnt_work"] = "İşe yaramadı..",
        ["emty_box"] = "Kutu boş..",
    },
    success = {
        ["worked"] = "İşe yaradı!",
    }
}
Lang = Locale:new({
phrases = Translations,
warnOnMissing = true})