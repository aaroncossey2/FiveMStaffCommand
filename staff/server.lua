-- server.lua

-- Set your Staff here
local Owner = "Put your staff members here"

-- Register the /staff command
RegisterCommand("staff", function(source, args, rawCommand)
    -- If the source is a player (not the console), send the message
    if source > 0 then
        TriggerClientEvent('chat:addMessage', source, {
            color = { 0, 255, 0}, -- Green color
            multiline = true,
            args = {"Server", "Meet Our Owner: " .. Owner}
        })
    end
end, false) -- false means the command is not restricted to admins