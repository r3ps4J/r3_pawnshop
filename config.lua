Config = {}

-- Change menu alignment
Config.MenuAlign = "top-left"

-- Change items that can be sold at the pawnshop, the number behind = is the price
Config.PawnshopItems = {
	dragon_scales = 2500,
	bones = 120,
	nuts_and_bolts = 80,
	gold_ring = 1250,
	metalscrap = 50,
}

Config.GiveBlack = false -- give black money? if disabled it'll give regular cash.

Config.PawnshopLocation =  {x = 182.07, y = -1319.06, z = 29.32}

-- Pawnshop blip
Config.PawnshopBlipText = "Pawnshop"
Config.PawnshopBlipColor = 5
Config.PawnshopBlipSprite = 272

-- Opening hours
Config.EnableOpeningHours = true -- Enable opening hours? If disabled you can always open the pawnshop.
Config.OpenHour = 9 -- From what hour should the pawnshop be open?
Config.CloseHour = 18 -- From what hour should the pawnshop be closed?