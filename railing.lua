 


minetest.register_node("plastic:railing_1", {
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

minetest.register_node("plastic:railing_2", {
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
			{-0.20, -0.5, -0.20, 0.25, 0.4, 0.25}, -- posts, all fucked up, no time to fiddle
			{-0.50, -0.5, -0.50, 0.55, 0.4, 0.55}, -- posts
			{-0.70, -0.5, -0.70, 0.75, 0.4, 0.75}, -- posts
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
	output = "plastic:railing_1",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "", "homedecor:plastic_sheeting", "" },
			{ "", "homedecor:plastic_sheeting", "" },

	},
})
			
minetest.register_craft( {
	output = "plastic:railing_2",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting"},
			{ "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting"},

	},
})