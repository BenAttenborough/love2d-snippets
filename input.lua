-- Some input handling cribbed from CS50 Game dev tutorials

function love.update(dt)
    -- keysPressed is reset every frame
    -- this is used purely to check a press, not a hold
    love.keyboard.keysPressed = {}
end

function love.load()
    -- Initialise our key watching tables
    love.keyboard.keysPressed = {}
    love.keyboard.keysHeld = {}
end

function love.keypressed(key)
    -- When a key is pressed or held add it to both tables
    love.keyboard.keysPressed[key] = true
    love.keyboard.keysHeld[key] = true
end

function love.keyreleased(key)
    -- when a key is released remove it from keysHeld table
    love.keyboard.keysHeld[key] = false
end

-- These two helper functions can then be called in other files,
-- such as objects
-- wasPressed requires user to press key again to trigger response
-- wasHeld triggers every fram until the key is released
function love.keyboard.wasPressed(key)
    -- returns state of key press
    return love.keyboard.keysPressed[key]
end

function love.keyboard.wasHeld(key)
    -- returns state of key held
    return love.keyboard.keysHeld[key]
end