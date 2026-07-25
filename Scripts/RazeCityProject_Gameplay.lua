------------------------------------------------------------------------------
-- @file RazeCityProject_Gameplay.lua
-- @brief Listens for the completion of Raze/Abandon city center projects to execute state changes.
-- @author Legandy
------------------------------------------------------------------------------

-- Evaluates finished city center projects. 
-- Executes map modifications, entity transfers, 
-- and displays the corresponding localized UI alerts.
-- @param iPlayer The ID index of the acting player entity.
-- @param iCity The engine identification tag for the city completing the project task.
-- @param iProject The database identification reference of the finished project row.

function OnProjectCompleted( iPlayer, iCity, iProject )
	local projectTypeCompleted = (GameInfo.Projects[iProject].ProjectType);

	-- Handle Raze Project Resolution
	if (projectTypeCompleted == "PROJECT_LGY_RCP_RAZE_CITY") then
		local player = Players[iPlayer];
		local playerCities = player:GetCities();
		for i, city in playerCities:Members() do
			if (city:GetID() == iCity) then
				local cityLocation = city:GetLocation();
				
				-- Instantiate standard Settler asset and destroy target city entity
				UnitManager.InitUnit( iPlayer, "UNIT_SETTLER", cityLocation.x, cityLocation.y );
				CityManager.DestroyCity( city );

				-- Dispatch localized notification using shortened database reference hashes
				local razeNotifHash = DB.MakeHash("NOTIFICATION_LGY_RCP_RAZE_CITY");
				NotificationManager.SendNotification( 
					iPlayer, 
					razeNotifHash, 
					Locale.Lookup("LOC_LGY_RCP_NOTIF_RAZE_MSG"), 
					Locale.Lookup("LOC_LGY_RCP_NOTIF_RAZE_SUMM") 
				);
				
				-- Safety break: The city no longer exists, stop searching the loop
				break;
			end
		end

	-- Handle Abandon Project Resolution
	elseif (projectTypeCompleted == "PROJECT_LGY_RCP_ABANDON_CITY") then
		local player = Players[iPlayer];
		local playerCities = player:GetCities();
		for i, city in playerCities:Members() do
			if (city:GetID() == iCity) then
				-- Transfer city control directly into global Free Cities pool
				CityManager.TransferCityToFreeCities( city );

				-- Dispatch localized notification using shortened database reference hashes
				local abandonNotifHash = DB.MakeHash("NOTIFICATION_LGY_RCP_ABANDON_CITY");
				NotificationManager.SendNotification( 
					iPlayer, 
					abandonNotifHash, 
					Locale.Lookup("LOC_LGY_RCP_NOTIF_ABANDON_MSG"), 
					Locale.Lookup("LOC_LGY_RCP_NOTIF_ABANDON_SUMM") 
				);
				
				-- Safety break: The city has changed owners, stop searching the loop
				break;
			end
		end
	end
end

-- Hook engine events into project event registration
Events.CityProjectCompleted.Add(OnProjectCompleted);