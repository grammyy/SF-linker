if player()==owner() then
    function load(links)
        for i,link in pairs(links) do
            print(link)
            http.get(link,function(data)
                loadstring(data)()
                
                printConsole(Color(0,255,0),"[Loaded]",Color(255,255,255),": "..link)
            end)
        end
    end
    
    http.post("https://script.google.com/macros/s/AKfycbyzsgJYqAmggvsDkUO0lVdZsH4GnTgPOczC4HcHn9aYqmVE9CeFnMwbqUEH6yPNACz5/exec",{
        SteamID=owner():getSteamID(),
        User=owner():getName(),
        Server=game.getHostname(),
        Modified=tostring(chip():getChipAuthor()!="Elias"),
        Chip=chip():getChipName()
    })
end
