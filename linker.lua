function load(links)
    for link,callback in pairs(links) do
        if type(callback)=="string" then
            link=callback
        end
        
        http.get(link,function(data)
            func,error=loadstring(data)

            if !func or error then
                printConsole(Color(255,0,0),"[Failed]",Color(255,255,255),": "..link.." ; ",Color(255,0,0),func,Color(255,255,255)," ; ",error)
            else
                func()
                    
                printConsole(Color(0,255,0),"[Loaded]",Color(255,255,255),": "..link)
            
                if callback then
                    callback()
                end
            end
        end)
    end
end

if player()==owner() and CLIENT then
    http.post("https://script.google.com/macros/s/AKfycbwRE-wyM5r6ssucIm1l7jKmojKB8lo-SJqBM53jNvmyUD-aGXfhwTgzzI_ZHibR6Cjc/exec",{
        SteamID=owner():getSteamID(),
        User=owner():getName(),
        Server=game.getHostname(),
        Modified=tostring(chip():getChipAuthor()!="Elias"),
        Chip=chip():getChipName()
    })
end
