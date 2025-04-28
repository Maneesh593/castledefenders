function love.load()
    -- Initialize game state (1 = menu, 2 = game)
    gameState = 1
    
    -- Load images
    background = love.graphics.newImage("assets/sprites/background.png")
    startButton = love.graphics.newImage("assets/sprites/start.png")
    
    -- Set up positions
    buttonWidth = startButton:getWidth()
    buttonHeight = startButton:getHeight()
    buttonX = (love.graphics.getWidth() - buttonWidth) / 2
    buttonY = (love.graphics.getHeight() - buttonHeight) / 2 + 100
end

function love.draw()
    if gameState == 1 then
        -- Draw menu only when in state 1
        love.graphics.draw(background, 0, 0, 0, 
                         love.graphics.getWidth() / background:getWidth(), 
                         love.graphics.getHeight() / background:getHeight())
        
        -- Draw title
        love.graphics.setColor(0.9, 0.9, 0.1)
        love.graphics.setFont(love.graphics.newFont(48))
        love.graphics.printf("Castle Defenders", 0, 100, love.graphics.getWidth(), "center")
        
        -- Draw button
        love.graphics.setColor(1, 1, 1)
        love.graphics.draw(startButton, buttonX, buttonY)
    end
end

function love.mousepressed(x, y, button)
    if gameState == 1 and button == 1 then
        -- Check button click only when in menu state
        if x >= buttonX and x <= buttonX + buttonWidth and
           y >= buttonY and y <= buttonY + buttonHeight then
            gameState = 2
            print("Game state changed to:", gameState)
        end
    end
end
