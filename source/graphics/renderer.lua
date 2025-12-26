renderer = {

}

function renderer.render(mv)
    mv = mv or 0
    angle = {yaw = camera.angle.yaw, pitch = camera.angle.pitch}
    for _, val in ipairs(vertices.objs) do
        --for index, value in ipairs(val.verts) do
        --    objects.point.createPoint(vectors.screenCordinates(vectors.project(vectors.add(vectors.rotate({x = value.x, y = value.y, z = value.z}, {yaw = val.angle.yaw + angle.yaw, pitch = val.angle.pitch + angle.pitch}), {x = val.move.x + mv.x, y = val.move.y + mv.y, z = val.move.z + mv.z}))))
        --end

        for index, value in ipairs(val.lineWire) do
            for i=1, #value do
                a = val.verts[value[i]]
                b = val.verts[value[(i % #value) + 1]]
                renderer.line(
                vectors.screenCordinates(vectors.project(vectors.add(vectors.rotate(a, {yaw = val.angle.yaw + angle.yaw, pitch = val.angle.pitch + angle.pitch}), {x = val.move.x + mv.x, y = val.move.y + mv.y, z = val.move.z + mv.z}))),
                vectors.screenCordinates(vectors.project(vectors.add(vectors.rotate(b, {yaw = val.angle.yaw + angle.yaw, pitch = val.angle.pitch + angle.pitch}), {x = val.move.x + mv.x, y = val.move.y + mv.y, z = val.move.z + mv.z}))))
            end
        end
    end
end

function renderer.line(obj1, obj2)
    love.graphics.line(obj1.x, obj1.y, obj2.x, obj2.y)
end

return renderer