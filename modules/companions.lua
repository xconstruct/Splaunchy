local module = Splaunchy:RegisterModule("Companions")

local function addCompanionType(typeID)
	for i=1, GetNumCompanions(typeID) do
		local _, name, _, icon = GetCompanionInfo(typeID, i)
		module:RegisterFunction(name, function()
				CallCompanion(typeID, i)
			end
		).texture = icon
	end
end

function module:Init()
	addCompanionType("MOUNT")
	addCompanionType("CRITTER")
end