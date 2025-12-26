objects = {
    cube = {
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
        }
    },
    point = {
    }
}

function objects.point.createPoint(obj)
    local pointSize = 10
    love.graphics.rectangle("fill", obj.x - (pointSize/2), obj.y - (pointSize/2), pointSize, pointSize)
end

return objects