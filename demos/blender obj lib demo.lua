--@name blender obj lib (HTTP lib linked demo)
--@author Elias

http.get("https://raw.githubusercontent.com/Elias-bff/SF-linker/main/linker.lua",function(data)
    loadstring(data)()
    
    load({
        ["https://raw.githubusercontent.com/Elias-bff/Blender-OBJ-SF-lib/main/libs/objs_lib.lua"]=function()
            if SERVER then
                local test=objs:new({
                    "https://www.dropbox.com/scl/fi/2zkfoqjzpc7g2urdkkzhs/Cube.obj?rlkey=3ims8uw1fotvwh2vnthld35vd&dl=0"
                }):spawn({
                    scale=10,
                    pos=chip():getPos()+Vector(0,0,20)
                })
            end
        end
    })
end)
