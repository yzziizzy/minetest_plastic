 


minetest.register_node("plastic:railing_z", {
	description = "Plastic Railing",
	-- drawtype = "allfaces_optional",
	tiles = { "plastic_plastic_block.png" },
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, 0.3, -0.5, 0.1, 0.5, 0.5}, -- rail
			{-0.1, -0.5, -0.1, 0.1, 0.4, 0.1}, -- post
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.5, 0.1, 0.5, 0.5}
		},
	},
	
})


minetest.register_craft( {
	output = "plastic:railing_z",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "", "homedecor:plastic_sheeting", "" },
			{ "", "homedecor:plastic_sheeting", "" },

	},
})