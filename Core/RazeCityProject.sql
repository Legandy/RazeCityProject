-- ===========================================================================
-- @file RazeCityProject.sql
-- @brief Establishes core game object types, custom notifications, and balanced city projects.
-- @author Wiseguy, Legandy
-- ===========================================================================

-- ===========================================================================
-- Types Configuration (Critical Registration Hooks)
-- ===========================================================================
INSERT INTO Types (Type, Kind) VALUES 
('PROJECT_LGY_RCP_RAZE_CITY', 'KIND_PROJECT'),
('PROJECT_LGY_RCP_ABANDON_CITY', 'KIND_PROJECT'),
('NOTIFICATION_LGY_RCP_RAZE_CITY', 'KIND_NOTIFICATION'),
('NOTIFICATION_LGY_RCP_ABANDON_CITY', 'KIND_NOTIFICATION');

-- ===========================================================================
-- Projects Definition (Dynamically Scaled & Era Balanced)
-- ===========================================================================
INSERT INTO Projects (
    ProjectType, 
    Name, 
    ShortName, 
    Description, 
    Cost, 
    CostProgressionModel,
    CostProgressionParam1,
    PrereqDistrict
) VALUES (
    'PROJECT_LGY_RCP_RAZE_CITY', 
    'LOC_LGY_RCP_RAZE_CITY_NAME', 
    'LOC_LGY_RCP_RAZE_CITY_SHORTNAME', 
    'LOC_LGY_RCP_RAZE_CITY_DESC', 
    50, 
    'COST_PROGRESSION_GAME_PROGRESS',
    1500, 
    'DISTRICT_CITY_CENTER'
),
(
    'PROJECT_LGY_RCP_ABANDON_CITY', 
    'LOC_LGY_RCP_ABANDON_CITY_NAME', 
    'LOC_LGY_RCP_ABANDON_CITY_SHORTNAME', 
    'LOC_LGY_RCP_ABANDON_CITY_DESC', 
    25, 
    'COST_PROGRESSION_GAME_PROGRESS',
    1500, 
    'DISTRICT_CITY_CENTER'
);

-- ===========================================================================
-- Notification System Settings
-- ===========================================================================
INSERT INTO Notifications (
	NotificationType,
	Message,
	Summary,
	SeverityType,
	VisibleInUI,
	ShowIconSinglePlayer,
	Icon
) VALUES (
	'NOTIFICATION_LGY_RCP_RAZE_CITY',
	'LOC_LGY_RCP_NOTIF_RAZE_MSG',
	'LOC_LGY_RCP_NOTIF_RAZE_SUMM',
	'MID',
	1,
	1,
	'ICON_NOTIFICATION_CITY_LOST'	-- Vanilla City Asset Destruction Icon
),
(
	'NOTIFICATION_LGY_RCP_ABANDON_CITY',
	'LOC_LGY_RCP_NOTIF_ABANDON_MSG',
	'LOC_LGY_RCP_NOTIF_ABANDON_SUMM',
	'MID',
	1,
	1,
	'ICON_NOTIFICATION_REBELLION'	-- Vanilla Free City Transfer Icon
);