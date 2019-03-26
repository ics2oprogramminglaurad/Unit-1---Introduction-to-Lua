-----------------------------------------------------------------------------------------
-- Title: MathFun
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program uses if...then...else... to ask the user addition, subtraction, multiplication,
-- and division questions.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the background color
display.setDefault( "background", 181/255, 53/255, 176/255 )

-- create local variables
local randomOperator

local randomnumber1
local randomNumber2

local textObject
local questionObject

local function AskQuestion()
	-- generate a random number between 1 and 4
randomOperator = math.random(1,3)

-- generate 2 random numbers
randomNumber1 = math.random(0,4)
randomNumber2 = math.random(0,4)

-- if the random operator is 1, then do addition
	if (randomOperator == 1) then

		-- calculate the correct answer
		correctAnswer = randomNumber1 + randomNumber2

		-- create question in text object
		questionObject.text = randomNumber1 .. "+" .. randomNumber2 .. "="

	-- otherwise, if the random operator is 2, do subtraction
	elseif (randomOperator == 2 ) then
		--calculate the correct answer
		correctAnswer = randomNumber1 - randomNumber2

		-- create the question in text object
		questionObject.text = randomNumber1 .. "-" .. randomNumber2 .. "="
	-- otherwise, if the random operator is 2, do subtraction
	elseif (randomOperator == 3 ) then
		--calculate the correct answer
		correctAnswer = randomNumber1 * randomNumber2

		-- create the question in text object
		questionObject.text = randomNumber1 .. "*" .. randomNumber2 .. "="	
	end
end

-- call the function to ask the question
AskQuestion()

