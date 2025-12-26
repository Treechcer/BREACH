renderer = {

}

function renderer.render(mv, angle)
    mv = mv or 0
    angle = angle or 0
    for index, value in ipairs(vertices.verts) do
        objects.point.createPoint(vectors.screenCordinates(vectors.project(vectors.add(vectors.rotateXZ({x = value.x, y = value.y, z = value.z}, angle), {x = 0, y = 0, z = mv}))))
    end
end

return renderer