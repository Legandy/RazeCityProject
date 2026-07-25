-- ===========================================================================
-- @file RazeCityProject_de_DE.sql
-- @brief Dedicated localization database injections for German (de_DE).
-- @locale de_DE
-- @author Legandy
-- ===========================================================================

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text) VALUES
('de_DE', 'LOC_LGY_RCP_RAZE_CITY_NAME', 'Stadtabriss'),
('de_DE', 'LOC_LGY_RCP_RAZE_CITY_SHORTNAME', 'Stadtabriss'),
('de_DE', 'LOC_LGY_RCP_RAZE_CITY_DESC', 'Zerstört diese Stadt und wandelt die Stadt in einen Siedler um.'),

('de_DE', 'LOC_LGY_RCP_ABANDON_CITY_NAME', 'Stadtaufgabe'),
('de_DE', 'LOC_LGY_RCP_ABANDON_CITY_SHORTNAME', 'Stadtaufgabe'),
('de_DE', 'LOC_LGY_RCP_ABANDON_CITY_DESC', 'Lässt diese Stadt als eine unabhängige Freie Stadt frei.'),

('de_DE', 'LOC_LGY_RCP_NOTIF_RAZE_MSG', 'Eine Stadt wurde niedergerissen'),
('de_DE', 'LOC_LGY_RCP_NOTIF_RAZE_SUMM', 'Eine Eurer Städte wurde niedergerissen und ihre Bevölkerung wurde zu einem Siedler.'),

('de_DE', 'LOC_LGY_RCP_NOTIF_ABANDON_MSG', 'Eine Stadt wurde aufgegeben'),
('de_DE', 'LOC_LGY_RCP_NOTIF_ABANDON_SUMM', 'Eine Eurer Städte wurde als unabhängige Freie Stadt freigelassen.');