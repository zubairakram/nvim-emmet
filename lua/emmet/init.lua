local html = require("snippets.html")
local css = require("snippets.css")


local function expand_tag(tag)
    return string.format("<%s></%s>", tag, tostring(tag))
end


print(expand_tag("h1"))
