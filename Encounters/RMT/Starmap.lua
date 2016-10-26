----------------------------------------------------------------------------------------------------
-- Client Lua Script for RaidCore Addon on WildStar Game.
--
-- Copyright (C) 2015 RaidCore
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- Description:
-- TODO
----------------------------------------------------------------------------------------------------
local core = Apollo.GetPackage("Gemini:Addon-1.1").tPackage:GetAddon("RaidCore")
local mod = core:NewEncounter("Starmap", 104, 548, 556)
if not mod then return end

----------------------------------------------------------------------------------------------------
-- Registering combat.
----------------------------------------------------------------------------------------------------
mod:RegisterTrigMob("ALL", { "unit.alpha_cassus" })
mod:RegisterEnglishLocale({
    -- Unit names.
    ["unit.alpha_cassus"] = "Alpha Cassus",
    -- Cast names.
    -- Messages.
  })
----------------------------------------------------------------------------------------------------
-- Settings.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- Encounter description.
----------------------------------------------------------------------------------------------------
mod:RegisterUnitEvents("unit.alpha_cassus",{
    [core.E.UNIT_CREATED] = function (_, _, unit)
      core:AddUnit(unit)
      core:WatchUnit(unit, core.E.TRACK_ALL)
    end,
  }
)
