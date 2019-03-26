-- Title: TouchAndReact
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program displays a blue button.
-- When I click on it, it changes to a red button and the word "clicked" appears
-- on the screen as well as an image and a sound effect.
-- When I release the button, it returns to the original screen.

-- set background color
display.setDefault ("background", 240/255, 135/255, 73/255)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create local variables
local correctImage = display.newImageRect ("Images/checkmark.png", 198, 96)
local incorrectImage = display.newImageRect ("Images/red_x.png", 198,96)

correctImage.isVisible = false
incorrectImage.isVisible = false

local incorrectSound = audio.loadStream("Sounds/Wrong Buzzer Sound Effect.mp3")
local correctSound = audio.loadStream("Sounds/Correct Answer Sound Effect.mp3")

-- set intial x,y position of the checkmark
correctImage.x = display.contentWidth/2
correctImage.y = 500

-- set the initial x,y position of the red x
incorrectImage.x = display.contentWidth/2
incorrectImage.y = 500

-- create blue button, set it's position and make it visisble
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0 ,0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (20/255, 228/255, 221/255)
textObject.isVisible = false

-- create text object2, set its position and make it invisible
local textObject2 = display.newText ("Clicked!", 0 ,0, nil, 50)
textObject2.x = display.contentWidth/2
textObject2.y = display.contentHeight/3
textObject2:setTextColor (228/255, 20/255, 186/255)
textObject2.isVisible = false

-- Function: BlueButtonListener
-- Input: touch Listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the
-- red button, and make the blue button disappear
local function BlueButtonListener (touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		correctImage.isVisible = true
		local correctSoundChannel = audio.play( correctSound )
		incorrectImage.isVisible = false
		
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		correctImage.isVisible = false
	end
end

-- add the listener
blueButton: addEventListener("touch", BlueButtonListener)

-- Function: RedButtonListener
-- Input: Touch listener
-- Output: none
-- Description: when blue button is clicked, it will make the text appear with the
-- red button, and make the blue button disappear
local function RedButtonListener (touch)

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		correctImage.isVisible = false
		incorrectImage.isVisible = true
		local IncorrectSoundChannel = audio.play ( incorrectSound )
		textObject2.isVisible = true
	end
end

-- add the listener
redButton:addEventListener("touch", RedButtonListener)