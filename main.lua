require('class')

local Player = require('Player')

player = nil

function love.load()
	player = Player()
	player:init()
	

end

function love.draw()
	player:draw()
end

function love.update(dt)
	player:update(dt)
end