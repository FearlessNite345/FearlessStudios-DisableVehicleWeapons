# FearlessStudios-DisableVehicleWeapons
 
### Installation
Put this into your server.cfg
```cfg
start FearlessStudios-DisableVehicleWeapons
```

### Config
The config can have more vehicles added to it simply by adding 
```lua
['vehicle_name'] = true
```
```lua
config = {}

config.disabledVehicleWeapons = {
    ['vehicle_name'] = true,
} 
-- You are able to add as many as you like
-- These are the vehicleName if you are unsure what the vehicle name is enable debug below to see it in the F8 console 

config.debug = false -- Set to true to show debug in the F8 console when entering vehicles
```