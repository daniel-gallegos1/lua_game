function love.load()
	mySquare = {}
	mySquare.x = 300
	mySquare.y = 300
	mySquare.height = 200
	mySquare.width = 200
	mySquare.ry = 0 --Determines the degree of rounded corners
	dheight = 0 --Counter for change in height (delta height)
	dwidth = 0 --Counter for change in width (delta width)

	myTriangle = {}
	myTriangle.coordinates = {200,200, 300,200, 250,100}
		
end


--Next step: combine functions to be able to move and grow simultaneously!
--[[
	After that: code a function that enables the rectangle to split into two shapes
	• One will be controlled by WASD, the other by arrow keys!
]]

function love.update()
		--[[
			Handle rectangle translations (x, y movements)
			• Handle compound keystrokes first
		]]

	--Handle the following cases: ---------------------------------
	--[[
		FIXME: Reorganize this list so it's arranged in a series of nested conditionals instead of a massive,
				copy and pasted list
	]]

	--Up, right, w, and d are pressed
	if love.keyboard.isDown("up") and love.keyboard.isDown("right")
	and love.keyboard.isDown('w') and mySquare.height < 500 
	and love.keyboard.isDown('d') and mySquare.width < 500 
	and mySquare.x <= (600 - dwidth) and mySquare.y >= 0 then
		mySquare.width = mySquare.width + 2
		mySquare.x = mySquare.x - 1
		dwidth = dwidth + 2
		mySquare.y = mySquare.y - 1
		mySquare.x = mySquare.x + 1
		mySquare.height = mySquare.height + 2
		mySquare.y = mySquare.y - 1
		dheight = dheight + 2

		--Fix so that if the square hits one of the walls, it continues growing and moving along that wall until it reaches a corner


	--Up, left, w, and d are pressed

	--Down, right, w, and d are pressed

	--Down, left, w, and d are pressed

	--Up, right, w, and a are pressed

	--Up, left, w, and a are pressed
	
	--Down, right, w, and a are pressed

	--Down, left, w, and a are pressed

	--

	--Up, right, s, and d are pressed

	--Up, left, s, and d are pressed

	--Down, right, s, and d are pressed

	--Down, left, s, and d are pressed

	--Up, right, s, and a are pressed

	--Up, left, s, and a are pressed
	
	--Down, right, s, and a are pressed

	--Down, left, s, and a are pressed

	--

	--Up, w, and d are pressed

	--Up, w, and a are pressed

	--Down, w, and d are pressed

	--Down, w, and a are pressed

	--Up, s, and d are pressed

	--Up, s, and a are pressed
	
	--Down, s, and d are pressed

	--Down, s, and a are pressed

	--

	--Right, w, and d are pressed

	--Right, w, and a are pressed

	--Right, w, and d are pressed

	--Right, w, and a are pressed

	--Left, s, and d are pressed

	--Left, s, and a are pressed
	
	--Left, s, and d are pressed

	--Left, s, and a are pressed

	--

	--Up, right, and w are pressed
	elseif love.keyboard.isDown("up") and love.keyboard.isDown("right")
	and love.keyboard.isDown('w') and mySquare.height < 500 
	and mySquare.x <= (600 - dwidth) and mySquare.y >= 0 then
		mySquare.y = mySquare.y - 1
		mySquare.x = mySquare.x + 1
		mySquare.height = mySquare.height + 2
		mySquare.y = mySquare.y - 1
		dheight = dheight + 2
	
	--Up, left, and w are pressed

	--Down, right, and w are pressed

	--Down, left, and w are pressed

	--Up, right, and s are pressed

	--Up, left, and s are pressed

	--Down, right, and s are pressed

	--Down, left, and s are pressed

	--

	--Up, right, and d are pressed
	
	--Up, left, and d are pressed

	--Down, right, and d are pressed

	--Down, left, and d are pressed

	--Up, right, and a are pressed

	--Up, left, and a are pressed

	--Down, right, and a are pressed

	--Down, left, and a are pressed

	--

	--w, and d are pressed

	--w, and a are pressed

	--s, and d are pressed

	--s, and a are pressed
	
	--

	--Up and w are pressed

	--Up and a are pressed

	--Up and s are pressed

	--Up and d are pressed
	
	--

	--Down and w are pressed

	--Down and a are pressed

	--Down and s are pressed

	--Down and d are pressed

	--

	--Right and w are pressed

	--Right and a are pressed

	--Right and s are pressed

	--Right and d are pressed

	--

	--Left and w are pressed

	--Left and a are pressed

	--Left and s are pressed

	--Left and d are pressed

	--

	--Up and w are pressed

	--Up and a are pressed

	--Up and s are pressed

	--Up and d are pressed

	--

	--Up is pressed

	--Down is pressed

	--Right is pressed

	--Left is pressed

	--

	--w is pressed

	--a is pressed

	--s is pressed

	--d is pressed


	
	
	elseif love.keyboard.isDown("down") and love.keyboard.isDown("right") 
	and mySquare.x <= (600 - dwidth) and mySquare.y <= (400 - dheight) then
		mySquare.y = mySquare.y + 1
		mySquare.x = mySquare.x + 1
	elseif love.keyboard.isDown("up") and love.keyboard.isDown("left") 
	and mySquare.x >= 0 and mySquare.y >= 0 then
		mySquare.y = mySquare.y - 1
		mySquare.x = mySquare.x - 1
	elseif love.keyboard.isDown("down") and love.keyboard.isDown("left") 
	and mySquare.x >= 0 and mySquare.y <= (400 - dheight) then
		mySquare.y = mySquare.y + 1
		mySquare.x = mySquare.x - 1		
	
	
	
	
	
	
	
	
	
	
	
	elseif love.keyboard.isDown("up") and love.keyboard.isDown("right") 
	and mySquare.x <= (600 - dwidth) and mySquare.y >= 0 then
		mySquare.y = mySquare.y - 1
		mySquare.x = mySquare.x + 1
	elseif love.keyboard.isDown("down") and love.keyboard.isDown("right") 
	and mySquare.x <= (600 - dwidth) and mySquare.y <= (400 - dheight) then
		mySquare.y = mySquare.y + 1
		mySquare.x = mySquare.x + 1
	elseif love.keyboard.isDown("up") and love.keyboard.isDown("left") 
	and mySquare.x >= 0 and mySquare.y >= 0 then
		mySquare.y = mySquare.y - 1
		mySquare.x = mySquare.x - 1
	elseif love.keyboard.isDown("down") and love.keyboard.isDown("left") 
	and mySquare.x >= 0 and mySquare.y <= (400 - dheight) then
		mySquare.y = mySquare.y + 1
		mySquare.x = mySquare.x - 1		
		--[[
			Handle individual keystrokes next
		]]
	elseif love.keyboard.isDown("up") then
		mySquare.y = mySquare.y - 1
	elseif love.keyboard.isDown("down") then
		mySquare.y = mySquare.y + 1
	elseif love.keyboard.isDown("left") then
		mySquare.x = mySquare.x - 1
	elseif love.keyboard.isDown("right") then
		mySquare.x = mySquare.x + 1	
		--[[
			Handle rectangle deformations
		]]
	elseif love.keyboard.isDown('w') and mySquare.height < 500 then
		mySquare.height = mySquare.height + 2
		mySquare.y = mySquare.y - 1
		dheight = dheight + 2
	elseif love.keyboard.isDown('s') and mySquare.height > 30 then
		mySquare.height = mySquare.height - 2
		mySquare.y = mySquare.y + 1
		dheight = dheight - 2
	elseif love.keyboard.isDown('d') and mySquare.width < 500 then
		mySquare.width = mySquare.width + 2
		mySquare.x = mySquare.x - 1
		dwidth = dwidth + 2
	elseif love.keyboard.isDown('a') and mySquare.width > 30 then
		mySquare.width = mySquare.width - 2
		mySquare.x = mySquare.x + 1
		dwidth = dwidth - 2
	end
	--[[
		Prohibit mySquare from leaving the play area
	]]
	if mySquare.y < 0 then
		mySquare.y = mySquare.y + 1
	elseif mySquare.y > (400 - dheight) then
		mySquare.y = mySquare.y - 1
	elseif mySquare.x < 0  then
		mySquare.x = mySquare.x + 1
	elseif mySquare.x > (600 - dwidth) then 
		mySquare.x = mySquare.x - 1
	end

end

function love.draw()
	love.graphics.setColor(1, 1, 0)
	love.graphics.rectangle("fill", mySquare.x, 
		mySquare.y, mySquare.width, mySquare.height, mySquare.ry)
	
	love.graphics.setColor(1, 0, 0)
	love.graphics.polygon("fill", myTriangle.coordinates)

end

