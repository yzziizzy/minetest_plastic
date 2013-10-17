 
plastic = { }
-- deps

minetest.register_craft({
	type = "shapeless",
	output = 'homedecor:plastic_base 4',
	recipe = { "group:leaves",
			"group:leaves",
			"group:leaves",
			"group:leaves",
			"group:leaves",
			"group:leaves"
	}
})


-- plastic block
minetest.register_node( "plastic:plastic_rod", {
	description = "Plastic Rod",
	tiles = { "plastic_plastic_block.png" },
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
		},
	},
}) 

minetest.register_node( "plastic:plastic_rod_2d_cross", {
	description = "Plastic Cross (2D)",
	tiles = { "plastic_plastic_block.png" },
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
			{-0.5, -0.1, -0.1, 0.5, 0.1, 0.1},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
			{-0.5, -0.1, -0.1, 0.5, 0.1, 0.1},
		},
	},
}) 

minetest.register_node( "plastic:plastic_rod_3d_cross", {
	description = "Plastic Cross (3D)",
	tiles = { "plastic_plastic_block.png" },
	paramtype = "light",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.1, -0.5, 0.1, 0.1, 0.5},
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
			{-0.5, -0.1, -0.1, 0.5, 0.1, 0.1},
		},
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.1, -0.1, -0.5, 0.1, 0.1, 0.5},
			{-0.1, -0.5, -0.1, 0.1, 0.5, 0.1},
			{-0.5, -0.1, -0.1, 0.5, 0.1, 0.1},
		},
	},
}) 

-- plastic block
minetest.register_node( "plastic:plastic_block", {
	description = "Plastic Block",
	tiles = { "plastic_plastic_block.png" },
	groups = {choppy=2},
	sounds = default.node_sound_wood_defaults(),
}) 
minetest.register_craft( {
	output = "plastic:plastic_rod 1",
	recipe = {
			{ "homedecor:plastic_sheeting", "", "" },
			{ "homedecor:plastic_sheeting", "", "" },
			{ "homedecor:plastic_sheeting", "", "" }
	},
})
	
minetest.register_craft( {
	output = "plastic:plastic_rod_2d_cross 1",
	recipe = {
			{ "", "homedecor:plastic_sheeting", "" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "", "homedecor:plastic_sheeting", "" }
	},
})
	
minetest.register_craft( {
	output = "plastic:plastic_rod_3d_cross 1",
	recipe = {
			{ "", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "" }
	},
})
	
-- if minetest.get_modpath("moreblocks") 
	-- table.insert(circular_saw.known_stairs, v);
	
minetest.register_craft({
	type = "shapeless",
	output = "plastic:plastic_block 1",
	recipe = { "homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod",
			"homedecor:plastic_rod"
	}
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:plastic_sheeting 9",
	recipe = { "plastic:plastic_block" }
	
})

--register nodes in circular saw if aviable
if circular_saw then 
	for i,v in ipairs({"plastic_block"}) do
		table.insert(circular_saw.known_stairs, "plastic:" ..v);
	end
end
	
-- plastic stairs -- hopefully this does what i think it does
register_stair_slab_panel_micro("plastic", "plastic", "plastic:plastic_block",
	{cracky=3, not_in_creative_inventory=1},
	{"plastic_plastic_block.png"},
	"Plastic",
	"plastic",
	"facedir",
	0)



-- 	conductor tube recipe
minetest.register_craft( {
	output = "pipeworks:conductor_tube_off_000000 3",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "mesecons:mesecon", "mesecons:mesecon", "mesecons:mesecon" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})
-- plastic tube recipe
minetest.register_craft( {
	output = "pipeworks:tube 3",
	recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
			{ "", "", "" },
			{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

-- plastic chest
minetest.register_craft({
	output = 'plastic:plastic_chest',
	recipe = {
		{'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', '', 'homedecor:plastic_sheeting'},
		{'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting'},
	}
})


plastic.plastic_chest_formspec = 
	"size[8,10]"..
	"field[10,10;6,1;text;;${text}]"..
	"button[100,10;20,1;save;save]"..
	"list[current_name;main;0,1;8,4;]"..
	"list[current_player;main;0,6;8,4;]"

minetest.register_node("plastic:plastic_chest", {
	description = "Plastic Chest",
	tiles = {"plastic_plastic_chest_top.png", "plastic_plastic_chest_top.png", "plastic_plastic_chest_side.png",
		"plastic_plastic_chest_side.png", "plastic_plastic_chest_side.png", "plastic_plastic_chest_front.png"},
	paramtype2 = "facedir",
	groups = {choppy=2,oddly_breakable_by_hand=2},
	legacy_facedir_simple = true,
	sounds = default.node_sound_wood_defaults(),
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec",plastic.plastic_chest_formspec)
		meta:set_string("infotext", "Plastic Chest")
		local inv = meta:get_inventory()
		inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		--print("Sign at "..minetest.pos_to_string(pos).." got "..dump(fields))
		local meta = minetest.get_meta(pos)
		fields.text = fields.text or ""
		print((sender:get_player_name() or "").." wrote \""..fields.text..
				"\" to Plastic Chest at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", '"'..fields.text..'"')
	end,

	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to chest at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from chest at "..minetest.pos_to_string(pos))
	end,
})

	-- pipeworks plastic chest integration
	
	
-- extractor plastic into oil
-- oil shale
	