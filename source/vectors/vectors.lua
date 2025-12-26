vectors = {}

function vectors.screenCordinates(obj) -- obj has x and y values
    local p = {x = 0, y = 0}
    p.x = (obj.x + 1) / 2 * game.width
    p.y = (1 - (obj.y + 1) / 2) * game.height

    return p
end

function vectors.project(obj) --object has x y and z!
    return {
        x = obj.x/obj.z,
        y = obj.y/obj.z
    }
end

function vectors.rotate(obj, angle)
    return vectors.rotateXZ(vectors.rotateYZ(obj, angle.yaw), angle.pitch)
end

function vectors.rotateXZ(obj, angle)
    local s = math.sin(angle)
    local c = math.cos(angle)

    return {x = obj.x*c - obj.z*s, y = obj.y, z = obj.x*s + obj.z*c}
end

function vectors.rotateXY(obj, angle)
    local s = math.sin(angle)
    local c = math.cos(angle)

    return {x = obj.x * c - obj.y * s, y = obj.x * s + obj.y * c, z = obj.z}
end

function vectors.rotateYZ(obj, angle)
    local s = math.sin(angle)
    local c = math.cos(angle)

    return {x = obj.x, y = obj.y * c - obj.z * s, z = obj.y * s + obj.z * c}
end

function vectors.add(obj1, obj2)
    local x = obj1.x + obj2.x
    local y = obj1.y + obj2.y
    local z = obj1.z + obj2.z

    return {x = x, y = y, z = z}
end

return vectors