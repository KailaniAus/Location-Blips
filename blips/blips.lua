---------------------------------------
----- CREATED BY NOVACANE#0001 -----
----- NOVAMODIFICATIONS@GMAIL.COM -----
---------------------------------------





local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

     {title="Mission Row Police Station", colour=38, id=60, x = 452.84, y = -988.07, z = Z, 43.69},
     {title="Sandy Shores Police Station", colour=38, id=60, x = 1853.65, y = 3687.02, z = 41.2},
     {title="Paleto Bay Police Station", colour=38, id=60, x = -444.09, y = 6004.93, z = 41.79},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)