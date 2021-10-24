local console = require(script.Parent.helpers.console)

return function (name)
    if typeof(name) ~= "string" then
        console.error("Import failed due to package name `" .. name .. "` provided not being type `string`")
        return
    end


    local module

    if not game.ReplicatedStorage:FindFirstChild("roarn_modules"):FindFirstChild(name) then
        console.error("roarn_modules or package with name `" .. name .. "` does not exist.")
        return
    end

    local suc = pcall(function()
        module = require(game.ReplicatedStorage.roarn_modules[name])
    end)

    if not suc then
        console.error("An error occured while importing the package.")
        return
    end
    

    return module
end