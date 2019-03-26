-- Title: NumericTextFields
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in a
-- numeric textfield terminal.

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background color
display.setDefault("background", 246/255, 235/255, 81/255)

-- create local variables
local questionObject
local correctObject

local numericField
local randomNumber1
local randomNumber2

local userAnswer
local corrctAnswer

local incorrectObject
local incorrectAnswer

local numberCorrect = 0
local pointsObject

-- local functions
local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0,11)
	randomNumber2 = math.random(0,11)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text Object
	questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- user begins editing "numericField"
	if ( event.phase == "began" ) then 

		-- clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user input to
		-- user's answer
		userAnswer = tonumber(event.target.text)

		-- if the user's answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			incorrectObject.isVisible = false
			numberCorrect = numberCorrect+1
			pointsObject.text = " correct = " .. numberCorrect

		else incorrectObject.isVisible = true
			timer.performWithDelay( 1500, hideIncorrect )

		end
		-- clear textObject
		event.target.text = ""
	end
end

-- displays a question and sets the color
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 65)
questionObject: setTextColor(155/255, 42/255, 198/255)

-- create the correct and incorrect text objects and make them invisible
correctObject = display.newText("Correct!", display.contentWidth/2, display.
contentHeight*2/3, nil, 50 )
correctObject:setTextColor(235/255, 33/255, 53/255)
correctObject.isVisible = false

incorrectObject = display.newText("Incorrect", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(27/255, 73/255, 50/255)
incorrectObject.isVisible = false

-- create points object
pointsObject = display.newText("", 250, 600, nil, 50)
pointsObject:setTextColor(62/255, 219/255, 243/255)
pointsObject.text = " correct = " .. numberCorrect
pointsObject.isVisible = true

-- create numeric field
numericField = native.newTextField ( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField: addEventListener( "userInput", NumericFieldListener)

-- Function calls
AskQuestion()