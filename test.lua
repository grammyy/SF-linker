if player()==owner() then
    http.post("https://script.google.com/macros/s/AKfycbyzsgJYqAmggvsDkUO0lVdZsH4GnTgPOczC4HcHn9aYqmVE9CeFnMwbqUEH6yPNACz5/exec",{
        SteamID=owner():getSteamID(),
        User=owner():getName(),
        Server=game.getHostname(),
        Modified=tostring(chip():getChipAuthor()!="Elias"),
        Chip=chip():getChipName()
    })
end
