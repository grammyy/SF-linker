--@author Elias
--@client

version=1.1

loadstring("http.get(\"https://raw.githubusercontent.com/Elias-bff/SF-linker/main/builds/version\",function(data)data=string.split(data,\"&&\")if tostring(version)!=data[1] then print(Color(255,0,0),\"[Version mismatch]\",Color(255,255,255),\": Please update \"..chip():getChipName()..\"'s code.\")elseif data[2] then print(Color(0,255,0),\"[Latest]\",Color(255,255,255),\": \"..data[2]) end end)")()