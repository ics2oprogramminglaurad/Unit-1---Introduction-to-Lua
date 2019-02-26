-- Title: AreaOfRectangleAndCircle
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program displays a coloured rectangle with
-- a border of a different colour. It also calculates
-- the rectangle's area and displays it on the screen. 
--Then I added the code to draw a circle of a given radius
-- that is coloured and a border of a different colour. I used
-- the radius to calculate the area and displayed this on the iPad. 

--Create my local variables
local areatext 
local textSize = 40
local myRectangle 
local widthOfRectangle = 315
local heightOfRectangle = 250
local areaOfRectangle 

-- set the background colour of my screen. Remeber that colors are between 0 and 1. 
display.setDefault("background", 255/255, 132/255, 132/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0,0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position 
myRectangle.anchorX = 0
myRectangle.anchorY = 0 
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border 
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(242/255, 111/255, 237/255)

-- set the color of the border
myRectangle:setStrokeColor (33/255, 2/255, 2/255)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration the size of the font when 
-- positioning it on the screen 
areatext = display.newText(" The area of this rectangle with a width of \n" ..
widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " .. 
areaOfRectangle .. " pixels² .", 0, 0, Arial, textSize)

-- anchor the text and set it's (x,y) position 
areatext.anchorX = 20
areatext.anchorY = 100
areatext.x = 900
areatext.y = display.contentHeight/2

-- set the color of the newText
areatext:setTextColor(154/255, 228/255, 255/255)

-- Create my local variables
local newareatext
local mycircle 
local textSize = 40
local PI = 3.14
local radiusOfCircle = 140
local areaOfCircle 
local contentheight

-- Create circle
mycircle = display.newCircle (830,600, radiusOfCircle)

-- Set color of the circle
mycircle: setFillColor (232/255, 1/255, 1/255)

--Set width of the border
mycircle.strokeWidth = 20

-- set the color of the border
mycircle:setStrokeColor (238/255, 238/255, 249/255)

--Calculate the area
areaOfCircle = PI * radiusOfCircle * radiusOfCircle

-- Write the area on the screen
newareatext = display.newText (" The area of this circle with a radius of \n " ..
radiusOfCircle .. " is " ..
areaOfCircle .. "  pixels².", 0,0, Arial, textSize)

-- set text (x,y) position
newareatext.x = 375
newareatext.y = 450

