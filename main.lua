love = require("love")

function love.load()
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
end

function love.draw()
    love.graphics.setColor(51/255, 141/255, 255/255)
    renderer.render(camera.pos)
end

function love.update(dt)
    love.mouse.setX(game.width/2)
    love.mouse.setY(game.height/2)
    --move = move + dt
    --for key, o in pairs(vertices.objs) do
    --    o.angle.pitch = o.angle.pitch + math.pi*dt
    --    o.angle.yaw = o.angle.yaw + math.pi*dt
    --end

    if love.keyboard.isDown("q") then
        love.event.quit()
    end

    if love.keyboard.isDown("w") then
        camera.pos.x = camera.pos.x + 1 * dt
    end
    if love.keyboard.isDown("s") then
        camera.pos.x = camera.pos.x - 1 * dt
    end
    
    if love.keyboard.isDown("space") then
        camera.pos.y = camera.pos.y - 1 * dt
    end
    if love.keyboard.isDown("lshift") then
        camera.pos.y = camera.pos.y + 1 * dt
    end
end

function love.mousepressed(x, y, button, istouch, presses)

end

function love.mousemoved(x, y, dx, dy, istouch)
    camera.angle.pitch = camera.angle.pitch + (dx / 500)
    camera.angle.yaw = camera.angle.yaw - (dy / 500)
end