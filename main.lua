function love.load()
	player = {
		position_x = 0,
		position_y = 0,
		dimensions_w = 50,
		dimensions_h = 50,
		speed = 500,
		score = 0,
	}
	--local t = {}
	--t.a == t["a"]
	--t[1]= 2

end

function love.draw()
	love.graphics.rectangle("fill", player.position_x, player.position_y, player.dimensions_w, player.dimensions_h)
end

function love.update(dt)
	local isMovingOnX = false
	local isMovingOnY = false

	--moving top/down
	if love.keyboard.isDown("w") and isMovingOnX == false then
		player.position_y = player.position_y - player.speed * dt
		isMovingOnY = true
	end
	if love.keyboard.isDown("s") and isMovingOnX == false then
		player.position_y = player.position_y + player.speed * dt
		isMovingOnY = true
	end

	--moving left/right
	if love.keyboard.isDown("a") and isMovingOnY == false then
		player.position_x = player.position_x - player.speed * dt
		isMovingOnX = true
	end
	if love.keyboard.isDown("d") and isMovingOnY == false then
		player.position_x = player.position_x + player.speed * dt
		isMovingOnX = true
	end
end