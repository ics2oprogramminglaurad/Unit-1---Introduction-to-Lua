-- Title: PhysicsAndCollisions
-- Name: Laura Duffley
-- Course: ICS2O/3C
-- This program has objects that interact using physics.

-- Hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create background music variable
local music

-- load background music
local music = audio.loadstream("Sound/clearday.mp3")

-- play background music
local music = audio.play( clearday.mp3 )

-- load physics
local physics = require("physics")

-- start physics
physics.start()

-- Objects

-- Ground
local ground = display.newImage("Images/ground.png", 0,0)
	-- set the x,y position of the ground
	ground.x = display.contentWidth/2
	ground.y = 2048

	-- change the width to be the same as the screen
	ground.width = display.contentWidth

	-- add to physics
	physics.addBody(ground, "static", {friction = 0.6, bounce = 0.4})

-- Beam with width and height
local beam = display.newImageRect("Images/beam.png")

-- set the x,y position of the beam
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.80

-- scale the beam
beam:scale(2,3)