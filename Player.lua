
local Player = class()

function Player:init()
	self.position_x = 0
	self.position_y = 0
	self.dimensions_w = 50
	self.dimensions_h = 50
	self.speed = 500
	self.score = 0
end

function Player:draw()
	love.graphics.rectangle("fill", self.position_x, self.position_y, self.dimensions_w, self.dimensions_h)
end

function Player:update(dt)
	local isMovingOnX = false
	local isMovingOnY = false

	--moving top/down
	if love.keyboard.isDown("w") and isMovingOnX == false then
		self.position_y = self.position_y - self.speed * dt
		isMovingOnY = true
	end
	if love.keyboard.isDown("s") and isMovingOnX == false then
		self.position_y = self.position_y + self.speed * dt
		isMovingOnY = true
	end

	--moving left/right
	if love.keyboard.isDown("a") and isMovingOnY == false then
		self.position_x = self.position_x - self.speed * dt
		isMovingOnX = true
	end
	if love.keyboard.isDown("d") and isMovingOnY == false then
		self.position_x = self.position_x + self.speed * dt
		isMovingOnX = true
	end
end


return Player