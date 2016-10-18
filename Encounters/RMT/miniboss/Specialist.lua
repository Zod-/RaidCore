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
local mod = core:NewEncounter("Specialist", 104, 0, 548)
if not mod then return end

----------------------------------------------------------------------------------------------------
-- Registering combat.
----------------------------------------------------------------------------------------------------
mod:RegisterTrigMob("ALL", { "unit.specialist" })
mod:RegisterEnglishLocale({
    -- Unit names.
    ["unit.specialist"] = "Munitions Specialist Luk'ki",
    -- Cast names.
    -- Messages.
  })
----------------------------------------------------------------------------------------------------
-- Settings.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- Encounter description.
----------------------------------------------------------------------------------------------------
mod:RegisterUnitEvents({"unit.specialist"},{
    [core.E.UNIT_CREATED] = function (_, _, unit)
      core:AddUnit(unit)
      core:WatchUnit(unit, core.E.TRACK_ALL)
    end,
  }
)
