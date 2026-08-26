-- Reads the hyprlang palette in colors.conf ($mauve = rgba(...)) into a Lua
-- table so there is still ONE generated palette. bin/rice-build writes
-- colors.conf from rice/palette.json; hyprlock.conf still consumes it as
-- hyprlang, and Hyprland's Lua config consumes it through this parser.
local M = {}

local here = debug.getinfo(1, "S").source:sub(2):match("(.*/)")

local f = io.open(here .. "colors.conf", "r")
if f then
    for line in f:lines() do
        local name, value = line:match("^%s*%$(%w+)%s*=%s*(%S+)")
        if name then
            M[name] = value
        end
    end
    f:close()
end

return M
