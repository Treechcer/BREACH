love = require("love")

function love.load()
    love.mouse.setRelativeMode(true)
    love.graphics.setLineWidth(3)
    love.window.setMode(800, 800)
    math.randomseed(os.time())

    love.graphics.setDefaultFilter("nearest", "nearest")
    objects = require("source.objects.objects")
    game = require("source.data.game")
    vectors = require("source.vectors.vectors")
    vertices = require("source.data.vertices")
    renderer = require("source.graphics.renderer")
    camera = require("source.data.camera")

    pirad = 180 / math.pi

    vertices.f.addObject(0,0,0.5,"monke", 0)
end

function love.draw()
    love.graphics.setColor(51/255, 141/255, 255/255)
    renderer.render(camera.pos)
end

function love.update(dt)
    --move = move + dt
    --for key, o in pairs(vertices.objs) do
    --    o.angle.pitch = o.angle.pitch + math.pi*dt
    --    o.angle.yaw = o.angle.yaw + math.pi*dt
    --end

    if love.keyboard.isDown("q") then
        love.event.quit()
    end

    if love.keyboard.isDown("w") then
        camera.pos.x = camera.pos.x + math.cos(camera.angle.yaw) * dt
        camera.pos.z = camera.pos.z + math.sin(camera.angle.yaw) * dt
    end
    if love.keyboard.isDown("s") then
        camera.pos.x = camera.pos.x - math.cos(camera.angle.yaw) * dt
        camera.pos.z = camera.pos.z - math.sin(camera.angle.yaw) * dt
    end
    
    if love.keyboard.isDown("space") then
        camera.pos.y = camera.pos.y - 1 * dt
    end
    if love.keyboard.isDown("lshift") then
        camera.pos.y = camera.pos.y + 1 * dt
    end

    if love.keyboard.isDown("p") and game.lastPointChange >= game.pointCD then
        game.renderPoints = not game.renderPoints
        game.lastPointChange = 0
    end

    game.lastPointChange = game.lastPointChange + dt
end

function love.mousepressed(x, y, button, istouch, presses)

end

function love.mousemoved(x, y, dx, dy, istouch)
    camera.angle.pitch = camera.angle.pitch + (dy / 900)
    camera.angle.yaw = camera.angle.yaw - (dx / 900)

    local maxPitch = math.rad(89)
    camera.angle.pitch = math.max(-maxPitch, math.min(maxPitch, camera.angle.pitch))
end