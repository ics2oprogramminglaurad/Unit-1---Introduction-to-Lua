-- Title: MovingObjects
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out.

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3
scrollSpeedtwo = -3

-- background image with width and height
local backgroundImage = display.newImageRect ("Images/background.png", 2048, 1536)

-- Character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- Set the image to be transparent 
beetleship.alpha = 0

--Set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

--Function: MoveShip
-- Input: this function accepts an event listener 
--Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip (event)
	-- add the scroll speed to the x-value of the ship
beetleship.x = beetleship.x + scrollSpeed
--Change the transparency of the ship every time it moves so that it fades out 
beetleship.alpha = beetleship.alpha + 0.01
end

--Moveship will be called over and over again
Runtime: addEventListener("enterFrame", MoveShip)

--Create local variable for star
local star

-- Character image with width and height
local star = display.newImageRect("Images/star.png", 200, 200)

-- Set the image to be transparent 
star.alpha = 1

--Set the initial x and y position of star
star.x = 1010
star.y = display.contentHeight/1.5

--Function: Movestar
-- Input: this function accepts an event listener 
--Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function Movestar (event)
	-- add the scroll speed to the x-value of the ship
star.x = star.x + scrollSpeedtwo
--Change the transparency of the star every time it moves so that it fades out 
star.alpha = star.alpha + 0.01
end

--Movestar will be called over and over again
Runtime: addEventListener("enterFrame", Movestar)