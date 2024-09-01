
local Food = class()


function Food:init()
	local width, height = love.graphics.getDimensions()
	self.position_x = width / 2
	self.position_y = height / 2
	self.dimensions_w = 20
	self.dimensions_h = 20
	
end

function Food:draw()
	love.graphics.rectangle("fill", self.position_x, self.position_y, self.dimensions_w, self.dimensions_h)
end

function Food:update(dt)
	
end


return Food