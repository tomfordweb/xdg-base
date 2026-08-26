-- t480 laptop (networking.hostName = "t480", see nixos/flake.nix).
--
-- Built-in panel only; docks/externals auto-place via the fallback rule.

hl.monitor({ output = "eDP-1", mode = "1920x1080@60", position = "0x0", scale = 1 })

-- Anything unmatched: auto-place at preferred res.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
