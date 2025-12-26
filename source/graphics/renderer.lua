renderer = {

}

function renderer.render(mv)
    mv = mv or 0
    for _, val in ipairs(vertices.objs) do
        angle = val.angle
        for index, value in ipairs(val.verts) do
            objects.point.createPoint(vectors.screenCordinates(vectors.project(vectors.add(vectors.rotateXZ({x = value.x, y = value.y, z = value.z}, angle), {x = val.move.x, y = val.move.y, z = val.move.z + mv}))))
        end

        for index, value in ipairs(val.lineWire) do
            for i=1, #value do
                a = val.verts[value[i]]
                b = val.verts[value[(i % #value) + 1]]
                renderer.line(
                vectors.screenCordinates(vectors.project(vectors.add(vectors.rotateXZ(a, angle), {x = val.move.x, y = val.move.y, z = val.move.z + mv}))),
                vectors.screenCordinates(vectors.project(vectors.add(vectors.rotateXZ(b, angle), {x = val.move.x, y = val.move.y, z = val.move.z + mv}))))
            end
        end
    end
end

function renderer.line(obj1, obj2)
    love.graphics.line(obj1.x, obj1.y, obj2.x, obj2.y)
end

return renderer