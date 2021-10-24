local console = {}

function console.log(log: string)
    return print(log)
end

function console.warn(log: string)
    return warn("[ROARN WARNING] " .. log)
end
function console.error(log: string)
    return error("[ROARN ERROR] " .. log)
end



return console