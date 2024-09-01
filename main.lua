require('class')

local Player = require('Player')
local Food = require("Food")

player = nil
food = nil

function love.load()
	player = Player()
	player:init()

	food = Food()
	food:init()
	

end

function love.draw()
	player:draw()
	food:draw()
end

function love.update(dt)
	player:update(dt)
	food:update(dt)
end