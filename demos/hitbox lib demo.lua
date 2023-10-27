--@name hitbox lib demo (http linked)
--@author Elias

http.get("https://raw.githubusercontent.com/Elias-bff/SF-linker/main/linker.lua",function(data)
    loadstring(data)()
    
    load({
        ["https://raw.githubusercontent.com/Elias-bff/hitbox-lib-SF/main/lib/hitbox_lib.lua"]=function()
            hook.add("render","",function()
                hitboxes.create(1,1,10,10,20,20,function(key)
                    --click function
                    
                    if key==15 then
                        print("pressed e on button")
                    end
                end,function()
                    --hover function that runs before rendering
                    
                    render.setColor(Color(255,0,0))
                end,function(x,y,w,h)
                    --rendering hook that renders the button, can be nil
                    
                    render.drawRect(x,y,w,h)
                end)
            end)
        end
    })
end)
