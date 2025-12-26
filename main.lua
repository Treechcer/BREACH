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

    move = 2
    pirad = 180 / math.pi
end

function love.draw()
    love.graphics.setColor(51/255, 141/255, 255/255)
    renderer.render(move)
end

function love.update(dt)
    --move = move + dt
    for key, o in pairs(vertices.objs) do
        o.angle = o.angle + math.pi*dt
    end

    if love.keyboard.isDown("q") then
        vertices.f.addObject(math.random(-1, 1),math.random(-1, 1),math.random(-1, 1),"cube", 0)
    end
end

function love.mousepressed(x, y, button, istouch, presses)

end