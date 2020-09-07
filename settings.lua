data:extend({
	{
		type = "int-setting",
		name = "heavy-freight-fuel-consumption-modifier",
		setting_type = "startup",
		default_value = 50,
		allowed_values = {1,10,50,100,400},
		admin = true,
		description = "Multiplier to fuel consumption.  This makes managing fuel (usage and stops) more important.",
		order = "1",
	},
	{
		type = "bool-setting",
		name = "heavy-freight-restrict-fuel-inventory-size",
		setting_type = "startup",
		default_value = true,
		admin = true,
		description = "Restricts fuel inventory size to 1 to make higher quality fuel more valuable",
		order = "2",
	},
	{
		type = "int-setting",
		name = "brake-nerf-factor",
		setting_type = "startup",
		default_value = 4,
		allowed_values = {1,2,4,8},
		admin = true,
		description = "Reduces breaking force",
		order = "2",
	}
})
