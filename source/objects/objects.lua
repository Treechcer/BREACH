objects = {
    cube = {
        verts = {
            {x = 0.5,y = 0.5,z = 0.5}
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