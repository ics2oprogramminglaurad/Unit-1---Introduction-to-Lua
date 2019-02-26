-- Title: HelloWorld
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program displays "Hello, World!"" to the simulator and to the command terminal.


-- print "Hello, World!" to the command terminal 
print ("***Hello, World!")

-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 179/255, 228/255, 255/255)

-- create a local variable
local textObject

-- displays text on the screen at position x = 500 anhd y = 350 with
-- a default font style and font size of 80
textObject = display.newText( "Hello, World!", 500, 350, nil, 80 )

-- sets the colour of the text
textObject : setTextColor(0/255, 0/255, 0/255)

-- create a local variable 
local textObjectSignature

-- displays text on the screen at position x = 500 anhd y = 500 with
-- a default font style and font size of 60
textObject = display.newText( "Created by: Laura Duffley", 500, 500, nil, 60 )

-- sets the colour of the text
textObject : setTextColor(252/255, 28/255, 28/255)
