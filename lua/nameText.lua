obs           = obslua
source_name   = ""
total_seconds = 0

cur_seconds   = 0
last_text     = ""
stop_text     = ""
activated     = false

hotkey_id     = obs.OBS_INVALID_HOTKEY_ID

-- Function to set the time text
function set_time_text()
	-- local seconds       = math.floor(cur_seconds % 60)
	-- local total_minutes = math.floor(cur_seconds / 60)
	-- local minutes       = math.floor(total_minutes % 60)
	-- local hours         = math.floor(total_minutes / 60)
	-- local text          = string.format("%02d:%02d:%02d", hours, minutes, seconds)

	-- if cur_seconds < 1 then
		-- text = stop_text
	-- end

	-- if text ~= last_text then
		-- local source = obs.obs_get_source_by_name(source_name)
		-- if source ~= nil then
			-- local settings = obs.obs_data_create()
			-- obs.obs_data_set_string(settings, "text", text)
			-- obs.obs_source_update(source, settings)
			-- obs.obs_data_release(settings)
			-- obs.obs_source_release(source)
		-- end
	-- end

	-- last_text = text
end

function timer_callback()
	-- cur_seconds = cur_seconds - 1
	-- if cur_seconds < 0 then
		-- obs.remove_current_callback()
		-- cur_seconds = 0
	-- end

	-- set_time_text()
end

function activate(activating)
	-- if activated == activating then
		-- return
	-- end

	-- activated = activating

	-- if activating then
		-- cur_seconds = total_seconds
		-- set_time_text()
		-- obs.timer_add(timer_callback, 1000)
	-- else
		-- obs.timer_remove(timer_callback)
	-- end
end

-- Called when a source is activated/deactivated
function activate_signal(cd, activating)
	-- local source = obs.calldata_source(cd, "source")
	-- if source ~= nil then
		-- local name = obs.obs_source_get_name(source)
		-- if (name == source_name) then
			-- activate(activating)
		-- end
	-- end
end

function source_activated(cd)
	-- activate_signal(cd, true)
end

function source_deactivated(cd)
	-- activate_signal(cd, false)
end

function reset(pressed)
	-- if not pressed then
		-- return
	-- end

	-- activate(false)
	-- local source = obs.obs_get_source_by_name(source_name)
	-- if source ~= nil then
		-- local active = obs.obs_source_active(source)
		-- obs.obs_source_release(source)
		-- activate(active)
	-- end
end

function reset_button_clicked(props, p)
	-- reset(true)
	-- return false
end

function executeAnimation(id)

end

function executeAnimation1Clicked(props, p)
	executeAnimation(1)
	return false
end
function executeAnimation2Clicked(props, p)
	executeAnimation(2)
	return false
end
function executeAnimation3Clicked(props, p)
	executeAnimation(3)
	return false
end
function executeAnimation4Clicked(props, p)
	executeAnimation(4)
	return false
end
function executeAnimation5Clicked(props, p)
	executeAnimation(5)
	return false
end
function executeAnimation6Clicked(props, p)
	executeAnimation(6)
	return false
end
function executeAnimation7Clicked(props, p)
	executeAnimation(7)
	return false
end
function executeAnimation8Clicked(props, p)
	executeAnimation(8)
	return false
end
function executeAnimation9Clicked(props, p)
	executeAnimation(9)
	return false
end


----------------------------------------------------------

-- A function named script_properties defines the properties that the user
-- can change for the entire script module itself
function script_properties()
	local props = obs.obs_properties_create()
	obs.obs_properties_add_text(props, "name1", "1. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title1", "1. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec1", "Execute", executeAnimation1Clicked);
	obs.obs_properties_add_text(props, "name2", "2. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title2", "2. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec2", "Execute", executeAnimation2Clicked);
	obs.obs_properties_add_text(props, "name3", "3. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title3", "3. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec3", "Execute", executeAnimation3Clicked);
	obs.obs_properties_add_text(props, "name4", "4. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title4", "4. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec4", "Execute", executeAnimation4Clicked);
	obs.obs_properties_add_text(props, "name5", "5. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title5", "5. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec5", "Execute", executeAnimation5Clicked);
	obs.obs_properties_add_text(props, "name6", "6. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title6", "6. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec6", "Execute", executeAnimation6Clicked);
	obs.obs_properties_add_text(props, "name7", "7. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title7", "7. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec7", "Execute", executeAnimation7Clicked);
	obs.obs_properties_add_text(props, "name8", "8. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title8", "8. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec8", "Execute", executeAnimation8Clicked);
	obs.obs_properties_add_text(props, "name9", "9. Name:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_text(props, "title9", "9. Title:", obs.OBS_TEXT_DEFAULT);
	obs.obs_properties_add_button(props, "exec9", "Execute", executeAnimation9Clicked);
	-- obs.obs_properties_add_int(props, "duration", "Duration (minutes)", 1, 100000, 1)

	-- local p = obs.obs_properties_add_list(props, "source", "Text Source", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	-- local sources = obs.obs_enum_sources()
	-- if sources ~= nil then
		-- for _, source in ipairs(sources) do
			-- source_id = obs.obs_source_get_id(source)
			-- if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				-- local name = obs.obs_source_get_name(source)
				-- obs.obs_property_list_add_string(p, name, name)
			-- end
		-- end
	-- end
	-- obs.source_list_release(sources)

	-- obs.obs_properties_add_text(props, "stop_text", "Final Text", obs.OBS_TEXT_DEFAULT)
	-- obs.obs_properties_add_button(props, "reset_button", "Reset Timer", reset_button_clicked)

	return props
end

function executeAnimation(id)
	
end

-- A function named script_description returns the description shown to
-- the user
function script_description()
	return "Animates name and title texts"
end

-- A function named script_update will be called when settings are changed
function script_update(settings)
	-- activate(false)

	-- total_seconds = obs.obs_data_get_int(settings, "duration") * 60
	-- source_name = obs.obs_data_get_string(settings, "source")
	-- stop_text = obs.obs_data_get_string(settings, "stop_text")

	-- reset(true)
end

-- A function named script_defaults will be called to set the default settings
function script_defaults(settings)
	-- obs.obs_data_set_default_int(settings, "duration", 5)
	-- obs.obs_data_set_default_string(settings, "stop_text", "Starting soon (tm)")
end

-- A function named script_save will be called when the script is saved
--
-- NOTE: This function is usually used for saving extra data (such as in this
-- case, a hotkey's save data).  Settings set via the properties are saved
-- automatically.
function script_save(settings)
	-- local hotkey_save_array = obs.obs_hotkey_save(hotkey_id)
	-- obs.obs_data_set_array(settings, "reset_hotkey", hotkey_save_array)
	-- obs.obs_data_array_release(hotkey_save_array)
end

-- a function named script_load will be called on startup
function script_load(settings)
	-- Connect hotkey and activation/deactivation signal callbacks
	--
	-- NOTE: These particular script callbacks do not necessarily have to
	-- be disconnected, as callbacks will automatically destroy themselves
	-- if the script is unloaded.  So there's no real need to manually
	-- disconnect callbacks that are intended to last until the script is
	-- unloaded.
	local sh = obs.obs_get_signal_handler()
	obs.signal_handler_connect(sh, "source_activate", source_activated)
	obs.signal_handler_connect(sh, "source_deactivate", source_deactivated)

	hotkey_id = obs.obs_hotkey_register_frontend("name1_effect_hotkey", "Name Effect 1", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect1")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name2_effect_hotkey", "Name Effect 2", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect2")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name3_effect_hotkey", "Name Effect 3", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect3")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name4_effect_hotkey", "Name Effect 4", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect4")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name5_effect_hotkey", "Name Effect 5", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect5")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name6_effect_hotkey", "Name Effect 6", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect6")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name7_effect_hotkey", "Name Effect 7", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect7")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name8_effect_hotkey", "Name Effect 8", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect8")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	hotkey_id = obs.obs_hotkey_register_frontend("name9_effect_hotkey", "Name Effect 9", reset)
	local hotkey_save_array = obs.obs_data_get_array(settings, "name_effect9")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
end
