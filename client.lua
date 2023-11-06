Citizen.CreateThread(function()
	local bool = false
	local currentVeh = nil
	while true do
		Citizen.Wait(1000)
		local ped = GetPlayerPed(-1)
		
		if IsPedInAnyVehicle(ped, false) then
			local veh = GetVehiclePedIsIn(ped, false)

			if currentVeh ~= veh then 
				bool = false
				currentVeh = veh 
			end
		
			if bool == false then
				bool = true
                local vehicleModel = GetEntityModel(veh)
				
                local vehicleName = string.lower(GetDisplayNameFromVehicleModel(vehicleModel))
                
				if config.debug then 
					print("Vehicle Handle: " .. veh)
					print("Vehicle Model: " .. vehicleModel)
					print("Vehicle Name: " .. vehicleName)
				end
				
                if config.disabledVehicleWeapons[vehicleName] then
					for i = 0, 10 do
						SetVehicleWeaponCapacity(veh, i, 0)
					end
                end
			end
		else
			if bool == true then
				bool = false
			end
		end
	end
end)