local css = require("css")
local html = require("html")
local pug = require("pug")
local variables = require("variables")
local xsl = require("xsl")

local snippets = {
    css = css,
    html = html,
    pug = pug,
    variables = variables,
    xsl = xsl,
}

local function help()
    print("hellow world")
end

return snippets
