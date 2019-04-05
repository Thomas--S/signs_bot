--[[

	Signs Bot
	=========

	Copyright (C) 2019 Joachim Stolberg

	LGPLv2.1+
	See LICENSE.txt for more information
	
	Cloning related functions

]]--

-- for lazy programmers
local S = function(pos) if pos then return minetest.pos_to_string(pos) end end
local P = minetest.string_to_pos
local M = minetest.get_meta

-- Load support for intllib.
local MP = minetest.get_modpath("signs_bot")
local I,_ = dofile(MP.."/intllib.lua")

local lib = signs_bot.lib

local ValidSizes = {
	["3x1"] = true,
	["3x2"] = true,
	["3x3"] = true,
	["5x1"] = true,
	["5x2"] = true,
	["5x3"] = true,
	["5x4"] = true,
	["5x5"] = true,
}

local function inv_get_item(pos, name)
	-- air can be copied for free
	if name == "air" then
		return "air"
	end
	-- try to get the item
	local inv =  minetest.get_inventory({type="node", pos=pos})
	local taken = inv:remove_item("main", ItemStack(name))
	if taken:get_count() == 0 then
		return "signs_bot:missing"
	end
	return name
end

local function inv_put_item(pos, mem, name)
	if name == "air" then
		return
	end
	local inv = minetest.get_inventory({type="node", pos=pos})
	local leftover = inv:add_item("main", ItemStack(name))
	if leftover:get_count() > 0 then
		lib.drop_items(mem.robot_pos, leftover)
	end
end


local function start_pos(robot_pos, robot_param2, x_size, lvl_offs)
	local pos = lib.next_pos(robot_pos, robot_param2)
	pos = {x=pos.x, y=pos.y+lvl_offs, z=pos.z}
	if x_size == 5 then
		return lib.dest_pos(pos, robot_param2, {3,3})
	else
		return lib.dest_pos(pos, robot_param2, {3})
	end
end	

--
-- Return a table with all positions to copy
-- 
local function gen_position_table(robot_pos, robot_param2, x_size, z_size, lvl_offs)
	local tbl = {}
	local pos = start_pos(robot_pos, robot_param2, x_size, lvl_offs)
	tbl[#tbl+1] = pos
	z_size = math.min(z_size, 5)
	for z = 1,z_size do
		for x = 1,x_size-1 do
			local dir = (z % 2) == 0 and 3 or 1
			pos = lib.dest_pos(pos, robot_param2, {dir})
			tbl[#tbl+1] = pos
		end
		if z < z_size then
			pos = lib.dest_pos(pos, robot_param2, {0})
			tbl[#tbl+1] = pos
		end
	end
	return tbl
end


local function pattern_copy(base_pos, mem)
	local src_pos = mem.src_pos_tbl[mem.steps]
	local dst_pos = mem.dst_pos_tbl[mem.steps]
	mem.steps = mem.steps + 1
	
	if lib.not_protected(base_pos, dst_pos) then
		local src_node = lib.get_node_lvm(src_pos)
		src_node.name = inv_get_item(base_pos, src_node.name)
	
		local dst_node = lib.get_node_lvm(dst_pos)
		inv_put_item(base_pos, mem, dst_node.name)
		src_node.param2 = (src_node.param2 + mem.dir_offs) % 4
		minetest.set_node(dst_pos, src_node)
	end
end

			
signs_bot.register_botcommand("pattern", {
	mod = "clone",
	params = "",	
	description = I("Store pattern to be cloned."),
	cmnd = function(base_pos, mem)
		mem.pttrn_pos = lib.next_pos(mem.robot_pos, mem.robot_param2)
		mem.pttrn_param2 = mem.robot_param2
		return true
	end,
})

signs_bot.register_botcommand("copy", {
	mod = "core",
	params = "<size> <lvl>",	
	description = I("Copy the nodes from\n"..
		"the stored pattern position\n"..
		"<size> is: 3x1, 3x2, 3x3,\n"..
		"5x1, 5x2, 5x3, 5x4, or 5x5\n"..
		"<lvl> pattern level offset (0..5)"),
	check = function(size, lvl)
		lvl = tonumber(lvl or 0)
		if not lvl or lvl < 0 or lvl > 5 then
			return false
		end
		return ValidSizes[size]
	end,
	cmnd = function(base_pos, mem, size, lvl)
		if not mem.steps then
			local x,z = size:match('(%d)x(%d)')
			lvl = tonumber(lvl or 0)
			mem.x_size = tonumber(x)
			mem.z_size = tonumber(z)
			mem.src_pos_tbl = gen_position_table(mem.pttrn_pos, mem.pttrn_param2, x, z, lvl)
			mem.dst_pos_tbl = gen_position_table(mem.robot_pos, mem.robot_param2, x, z, 0)
			mem.dir_offs = mem.robot_param2 - mem.pttrn_param2
			mem.steps = 1
		end
		pattern_copy(base_pos, mem)
		if mem.steps > #mem.src_pos_tbl then
			mem.steps = nil
			return true
		end
	end,
})


minetest.register_node("signs_bot:missing", {
	description = "Missing Node",
	tiles = {"signs_bot_missing_node.png"},
	drawtype = "glasslike",
	paramtype = "light",
	sunlight_propagates = true,
	use_texture_alpha = true,
	is_ground_content = false,
	groups = {snappy=3,cracky=3,oddly_breakable_by_hand=3, not_in_creative_inventory = 1},
	drop = "",
	sounds = default.node_sound_glass_defaults(),
})

signs_bot.register_sign({
	name = "pattern", 
	description = I('Sign "pattern"'), 
	commands = "pattern\nturn_around", 
	image = "signs_bot_sign_pattern.png",
})

minetest.register_craft({
	output = "signs_bot:pattern 2",
	recipe = {
		{"group:wood", "default:stick", "group:wood"},
		{"dye:red", "default:stick", "dye:black"},
		{"", "", ""}
	}
})

signs_bot.register_sign({
	name = "copy3x3x3", 
	description = I('Sign "copy 3x3x3"'), 
	commands = "dig_sign 1\nmove\ncopy 3x3\nmove_up\ncopy 3x3 1\nmove_up\ncopy 3x3 2\nmove_down\nmove_down\nbackward\nplace_sign 1\nturn_around", 
	image = "signs_bot_sign_copy3x3x3.png",
})

minetest.register_craft({
	output = "signs_bot:copy3x3x3 2",
	recipe = {
		{"group:wood", "default:stick", "group:wood"},
		{"dye:black", "default:stick", "dye:red"},
		{"", "", ""}
	}
})
