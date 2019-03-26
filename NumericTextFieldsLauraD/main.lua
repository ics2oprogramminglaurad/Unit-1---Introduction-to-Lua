-- Title: NumericTextFields
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This programdisplays a math question and asks the user to answer in a
-- numeric textfield terminal.

-- Your code here

-- hide thew status bar
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

-- local functions
local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0,10)
	randomNumber2 = math.random(0.10)

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
			correctObject.isVisisble = true
			timer.performWithDelay(1500, HideCorrect)

		end
	end
end

-- object creation 

-- displays a question and sets the color
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 60)
questionObject: setTextColor(155/255, 42/255, 198/255)

-- create the correct text object and make it invisible
correctObject = display.newText("Correct!", display.contentWidth/2, display.
contentHeight*2/3, nil, 50 )
correctObject:setTextColor(235/255, 33/255, 53/255)
correctObject.isVisisble = false

-- create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField: addEventListener( "userInput", NumericFieldListner)

-- Function calls