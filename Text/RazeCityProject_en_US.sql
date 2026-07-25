-- ===========================================================================
-- @file RazeCityProject_en_US.sql
-- @brief Dedicated localization database injections for English (en_US).
-- @locale en_US
-- @author Legandy
-- ===========================================================================

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text) VALUES
('en_US', 'LOC_LGY_RCP_RAZE_CITY_NAME', 'Raze City Project'),
('en_US', 'LOC_LGY_RCP_RAZE_CITY_SHORTNAME', 'Raze City'),
('en_US', 'LOC_LGY_RCP_RAZE_CITY_DESC', 'Destroy this City and spawn a Settler in its place.'),

('en_US', 'LOC_LGY_RCP_ABANDON_CITY_NAME', 'Abandon City Project'),
('en_US', 'LOC_LGY_RCP_ABANDON_CITY_SHORTNAME', 'Abandon City'),
('en_US', 'LOC_LGY_RCP_ABANDON_CITY_DESC', 'Release this City as an independent Free City.'),

('en_US', 'LOC_LGY_RCP_NOTIF_RAZE_MSG', 'A city was razed'),
('en_US', 'LOC_LGY_RCP_NOTIF_RAZE_SUMM', 'One of your cities was razed and its population became a Settler.'),

('en_US', 'LOC_LGY_RCP_NOTIF_ABANDON_MSG', 'A city was abandoned'),
('en_US', 'LOC_LGY_RCP_NOTIF_ABANDON_SUMM', 'One of your cities was released as an independent Free City.');