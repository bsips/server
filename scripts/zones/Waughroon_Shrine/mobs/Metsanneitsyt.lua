-----------------------------------
-- Area: Waughroon Shrine
--  Mob: Metsanneitsyt
-- BCNM: Grove Guardians
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMod(xi.mod.SLEEP_MEVA, 50)
end

entity.onMobDeath = function(mob, player, optParams)
end

return entity
