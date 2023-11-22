http.get(repo,function(data)
    data=string.split(data,"&&")
    
    if tostring(version)!=data[1] then 
        print(Color(255,0,0),"[Version mismatch]",Color(255,255,255),": Please update "..chip():getChipName().."'s code.\n")
        print(Color(255,0,0),"[Latest: "..data[1].."]",Color(255,255,255)," Changelog: "..data[2])
    elseif data[2] then 
        print(Color(0,255,0),"[Latest]",Color(255,255,255),": "..data[2]) 
    end 
end)
