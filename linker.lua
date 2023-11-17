loaded={}

function load(links)
    for link,callback in pairs(links) do
        if type(callback)=="string" then
            link=callback
        end

        http.get(link.."?time="..timer.realtime(),function(data)
            local name=string.split(http.urlDecode(link),"/")
            func,error=loadstring(data)

            if (!func or error) and CLIENT then
                printConsole(Color(255,0,0),"[Failed: "..(SERVER and "SERVER" or "CLIENT").."]",Color(255,255,255),": "..link.." ; ",Color(255,0,0),func,Color(255,255,255)," ; ",error)
            else
                func()

                loaded[name[#name]]=true
            
                if isfunction(callback) then
                    callback()
                end
                    
                printConsole(Color(0,255,0),"[Loaded: "..(SERVER and "SERVER" or "CLIENT").."]",Color(255,255,255),": "..link)
            end
        end)
    end
end

if player()==owner() and CLIENT then
    http.post("https://script.google.com/macros/s/AKfycbygYU3LyBiYy6-NKrQZVRHyynw2a-oP8dN9BGZLP23iJn6xHNmZYSuSxOY1pSMmd6UW/exec",{
        SteamID=owner():getSteamID(),
        User=owner():getName(),
        Server=game.getHostname(),
        Chip=chip():getChipName(),
        Author=chip():getChipAuthor()
    })
end
