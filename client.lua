Citizen.CreateThread(function()
	local bool = false
	while true do
		Citizen.Wait(0)					-- mandatory wait
		local ped = GetPlayerPed(-1)	-- get local ped
		
		if IsPedInAnyVehicle(ped, false) then
			local veh = GetVehiclePedIsIn(ped, false)
            local model = getvehiclem
			if bool == false then
				bool = true
                local vehicleModel = GetEntityModel(veh)
                local vehicleName = string.lower(GetDisplayNameFromVehicleModel(vehicleModel))
                print("Vehicle Handle: " .. veh)
                print("Vehicle Model: " .. vehicleModel)
                print("Vehicle Name: " .. vehicleName)

                if disabledVehicleWeapons[vehicleName] then 
                    SetVehicleWeaponsDisabled(veh, 0)
                end
			end
		else
			if bool == true then
				bool = false
			end
		end
	end
end)