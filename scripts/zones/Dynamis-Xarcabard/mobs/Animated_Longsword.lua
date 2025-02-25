-----------------------------------
-- Area: Dynamis - Xarcabard
--  Mob: Animated Longsword
-----------------------------------
local ID = require("scripts/zones/Dynamis-Xarcabard/IDs")
require("scripts/globals/status")
mixins = { require("scripts/mixins/animated_weapon") }
mixinOptions = { item = xi.items.HOLY_FRAGMENT }
-----------------------------------
local entity = {}

entity.onMobEngaged = function(mob, target)
    target:showText(mob, ID.text.ANIMATED_LONGSWORD_DIALOG)
end

entity.onMobFight = function(mob, target)
    -- TODO: add battle dialog
end

entity.onMobDisengage = function(mob)
    mob:showText(mob, ID.text.ANIMATED_LONGSWORD_DIALOG + 2)
end

entity.onMobDeath = function(mob, player, optParams)
    player:showText(mob, ID.text.ANIMATED_LONGSWORD_DIALOG + 1)
end

return entity
