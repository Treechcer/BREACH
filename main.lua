love = require("love")

function love.load()

    love.window.setMode(800, 800)

    love.graphics.setDefaultFilter("nearest", "nearest")
    objects = require("source.objects.objects")
    game = require("source.data.game")
    vectors = require("source.vectors.vectors")
    vertices = require("source.data.vertices")
    renderer = require("source.graphics.renderer")

    move = 2
    angle = 0
    pirad = 180 / math.pi
end

function love.draw()
    love.graphics.setColor(51/255, 141/255, 255/255)
    renderer.render(move, angle)
end

function love.update(dt)
    --move = move + dt
    angle = angle + math.pi*dt
end

function love.mousepressed(x, y, button, istouch, presses)

end