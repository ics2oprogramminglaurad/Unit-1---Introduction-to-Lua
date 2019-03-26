-- Title: TouchAndDrag
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program has two images on the screen. 
-- When you click and drag on each image, it moves with my finger.

-- Hides the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables. I am still trying tpo get the x-value to bwe set properly.
local backgroundImage = display.newImageRect("Images/background.png", 2048,1536)

local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150,150)
local yellowGirlWidth = yellowGirl.width
local yelloGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/blueGirl.png", 150,150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

local silverGirl = display.newImageRect ("Images/silverGirl.png", 150,150)
local silverGirlWidth = silverGirl.width
local silverGirlHeight = silverGirl.Height

-- my boolean variables to keep track of which object io touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false
local alreadyTouchedSilverGirl = false

-- set the initial x and y value of my image
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

silverGirl.x = 450
silverGirl.y = 250

-- Function: BlueGirlListener
-- Input: touch listener
-- Output: none
-- Description: When blue girl is touched, move her
local function BlueGirlListener(touch)

	if (touch.phase == "began") then
		if(alreadyTouchedYellowGirl == false) then
			alreadyTouchedBlueGirl = true
		end
	end

	if ((touch.phase == "moved") and (alreadyTouchedBlueGirl == true)) then
		blueGirl.x = touch.x
		blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedBlueGirl = false
		alreadyTouchedYellowGirl = false
		alreadyTouchedSilverGirl = false
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)

-- Function: YellowGirlListener
-- Input: touch listener
-- Output: none
-- description: When yellow girl is touched, move her
local function YellowGirlListener (touch)
	if(touch.phase == "began") then
		if(alreadyTouchedBlueGirl == false) then
			alreadyTouchedYellowGirl = true
		end
	end

	if ((touch.phase == "moved") and (alreadyTouchedYellowGirl == true)) then
		yellowGirl.x = touch.x
		yellowGirl.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedYellowGirl = false
		alreadyTouchedBlueGirl = false
		alreadyTouchedSilverGirl = false
	end
end

-- add the respective listeners to each object
yellowGirl:addEventListener("touch", YellowGirlListener)


-- Function: SilverGirlListener
-- Input: touch listener
-- output: none
-- description: When silver girl is touched, move her
local function SilverGirlListener (touch)

	if (touch.phase == "began") then
		if (alreadyTouchedBlueGirl == false) and (alreadyTouchedYellowGirl == false) then
			alreadyTouchedSilverGirl = true
		end
	end

	if ((touch.phase == "moved") and (alreadyTouchedSilverGirl == true)) then
		silverGirl.x = touch.x
		silverGirl.y = touch.y
	end

	if(touch.phase == "ended") then
		alreadyTouchedSilverGirl = false
		alreadyTouchedSilverGirl = false
	end
end

-- add the respective listeners to eacher object
silverGirl:addEventListener ("touch", SilverGirlListener)