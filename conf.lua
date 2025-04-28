
function love.conf(t)
    -- Check for fullscreen flag in command line arguments
    local fullscreen = false
    for _, arg in ipairs(arg) do
        if arg == "--fullscreen" then
            fullscreen = true
            break
        end
    end

    -- Basic configuration
    t.identity = "castle-defenders"       -- Save directory name
    t.version = "11.3"                    -- LÖVE version compatibility
    t.console = false                     -- Attach console (Windows only)
    
    -- Window settings
    t.window.title = "Castle Defenders"
    t.window.icon = nil                   -- Add path to icon if desired
    t.window.width = 640
    t.window.height = 360
    t.window.resizable = true             -- Allow window resizing
    t.window.vsync = 1                    -- Enable vertical sync
    
    -- Apply fullscreen mode if requested
    t.window.fullscreen = fullscreen
    t.window.fullscreentype = "desktop"   -- Better performance scaling
end
