return function(script_id)
    local auth = {}
    auth.validated = false

    -- Simulate key check delay
    task.spawn(function()
        wait(2)  -- simulate server check
        auth.validated = true
    end)

    return auth
end
