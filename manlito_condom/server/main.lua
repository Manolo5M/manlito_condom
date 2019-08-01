ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('condom', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local condom = xPlayer.getInventoryItem('condom')
	
		if condom.count > 0 then
			xPlayer.removeInventoryItem('condom', 1)
			TriggerClientEvent('esx_condom:startCondom', source)
			TriggerClientEvent('esx:showNotification', source, ('Du tog på dig Kondomen!'))
		else
			TriggerClientEvent('esx:showNotification', source, ('Du har få Kondomer kvar!'))
		end
end)
