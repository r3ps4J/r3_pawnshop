ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end) 

RegisterServerEvent("r3_prospecting:sellItem")
AddEventHandler("r3_prospecting:sellItem", function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.PawnshopItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('r3_prospecting: %s attempted to sell an invalid item!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
		TriggerClientEvent("r3_notifications:client:sendNotification", source, "You don't have enough of that item!", "error", 5000)
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveBlack then
		xPlayer.addAccountMoney('black_money', price)
	else
		xPlayer.addMoney(price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)
	TriggerClientEvent("r3_notifications:client:sendNotification", source, "You sold " .. amount .. " " .. xItem.label .. " for $" .. ESX.Math.GroupDigits(price), "success", 5000)
end)