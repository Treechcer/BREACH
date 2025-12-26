vertices = {
    objs = {
        {
            verts = {
                {x = 0.25,  y = 0.25,  z = 0.25},
                {x = -0.25, y = 0.25,  z = 0.25},
                {x = -0.25, y = -0.25, z = 0.25},
                {x = 0.25,  y = -0.25, z = 0.25},

                {x = 0.25,  y = 0.25,  z = -0.25},
                {x = -0.25, y = 0.25,  z = -0.25},
                {x = -0.25, y = -0.25, z = -0.25},
                {x = 0.25,  y = -0.25, z = -0.25},

                },
            lineWire = {
                {1,2,3,4},
                {5,6,7,8},
                {1,5},
                {2,6},
                {3,7},
                {4,8}
            },
            move = {
                x = 0.2,
                y = 0.5,
                z = 0
            },
            angle = {
                yaw = 0,
                pitch = 0
            }
        }
    },
    f = {}
}

function vertices.f.addObject(x,y,z,objIndex, angle)
    table.insert(vertices.objs, {verts = objects[objIndex].verts, lineWire = objects[objIndex].lineWire, move = {x = x, y = y, z = z}, angle = {yaw = 0, pitch = 0}})
end

return vertices