local modpath = minetest.get_modpath("plastic")
dofile(modpath.."/plastic.lua")
dofile(modpath.."/railing.lua")
-- dofile(modpath.."/tarsands.lua")

--
-- make crafts to convert moretrees trees into regular trees
-- for i in ipairs(moretrees.treelist) do
-- 	local treename = moretrees.treelist[i][1]
-- 	
-- 	minetest.register_craft({
-- 		output = 'default:stick',
-- 		recipe = {
-- 			{'', '', "moretrees:"..treename.."_stick"},
-- 			{'', '', ''},
-- 			{'', '', ''},
-- 		}
-- 	})
-- end
-- 
-- minetest.register_craft({
-- 	output = 'default:tree',
-- 	recipe = {
-- 		{'', '', 'group:tree'},
-- 		{'', '', ''},
-- 		{'', '', ''},
-- 	}
-- })
-- 
-- minetest.register_craft({
-- 	output = 'default:wood',
-- 	recipe = {
-- 		{'', '', 'group:wood'},
-- 		{'', '', ''},
-- 		{'', '', ''},
-- 	}
-- })
-- 
-- minetest.register_craft({
-- 	output = 'default:leaves',
-- 	recipe = {
-- 		{'', '', 'group:leaves'},
-- 		{'', '', ''},
-- 		{'', '', ''},
-- 	}
-- })

