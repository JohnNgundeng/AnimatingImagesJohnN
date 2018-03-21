-----------------------------------------------------------------------------------------
--Title: Animating Images
--Name: John Ngundeng
--Course ICS2O/3C
--This program displays three images moving in different directions,
--with some colored text and a background.
-----------------------------------------------------------------------------------------
-- creating local variables
local textSize = 45
local backgroundImage = display.newImageRect("Images/Moon.jpg", 1050, 1010)
local drake = display.newImageRect("Images/drake.png", 200, 200)
local Spongebob = display.newImageRect("Images/cavespongebob.png", 300, 300)
local kanyewest = display.newImageRect("Images/kanye west.png", 200, 200)

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--global variables
scrollSpeed = -2
scrollSpeed2 = 3
scrollSpeed3 = 4

--set the position of the background image
backgroundImage.x = 500
backgroundImage.y = 400

--make Drake transparent
drake.alpha = 0

--set the initial x and y position of drake
drake.x = 800
drake.y = display.contentHeight/3

--set the initial x and y position of Spongebob
Spongebob.x = 100
Spongebob.y = display.contentHeight*2.5/3

--set the initial x and y position of kanye west
kanyewest.x = 100
kanyewest.y = 10

--Function: Movedrake 
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of drake 
local function Movedrake(event)
	  --add the scroll speed to the x-value of Drake
	  drake.x = drake.x + scrollSpeed
	  -- change the transparency of Drake every time he moves so that he fades in
	  drake.alpha = drake.alpha + 0.01
	end

-- Movedrake will be called over and over again
Runtime:addEventListener("enterFrame", Movedrake)

--Function: MoveSpongeBob
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of SpongeBob
local function MoveSpongebob(event)
	  --add the scroll speed to the x-value of SpongeBob
	  Spongebob.x = Spongebob.x + scrollSpeed2 
	  -- change the transparency of SpongeBob every time he moves so that it fades out
	  Spongebob.alpha = Spongebob.alpha - 0.0005
	  --make SpongeBob smaller as it moves
	  Spongebob:scale(1 - 0.003, 1 - 0.003)
	end

-- MoveSpongebob will be called over and over again
Runtime:addEventListener("enterFrame", MoveSpongebob)


--Function: Movekanyewest
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the kanyewest
local function Movekanyewest(event)
	  --add the scroll speed to the x-value of the kanyewest
	  kanyewest.x = kanyewest.x + scrollSpeed3
	  kanyewest.y = kanyewest.y + scrollSpeed3
	  -- make the kanyewest spin as it moves
	  kanyewest:rotate(5)
	end

-- MoveKanye will be called over and over again
Runtime:addEventListener("enterFrame", Movekanyewest) 

--Display phrase on the screen
areaText = display.newText("I only Love my bed and my mamma i'm SORRY", 0, 0, Arial, textSize)
areaText.x = 475
areaText.y = 400
areaText:rotate(-20)

--set the text color
areaText:setTextColor(1, 0, 1)

-- setting sound variables 
local Music = audio.loadSound("Sounds/Drake.mp3")
local BackgroundMusic

-- setting background music 
BackgroundMusic = audio.play(Music)
