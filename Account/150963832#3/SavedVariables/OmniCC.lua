
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "9.0.10",
	},
	["profileKeys"] = {
		["招商中证白酒 - 罗宁"] = "默认",
		["不是吧不是 - 阿古斯"] = "默认",
		["维莉雅蕾妮 - 罗宁"] = "默认",
		["Minpojke - 罗宁"] = "默认",
		["西瓜味泡泡糖 - 罗宁"] = "默认",
		["震击机器人 - 罗宁"] = "默认",
		["焊接机器人 - 罗宁"] = "默认",
		["蕾妮 - 格瑞姆巴托"] = "默认",
		["西园寺恋 - 布兰卡德"] = "默认",
		["殷倾颜 - 罗宁"] = "默认",
		["Amilus - 燃烧之刃"] = "默认",
		["西园寺恋 - 白银之手"] = "默认",
		["狂乱合唱 - 蜘蛛王国"] = "默认",
		["小微微 - 罗宁"] = "默认",
		["片桐夏向 - 罗宁"] = "默认",
		["王源 - 蜘蛛王国"] = "默认",
		["她会的我也会 - 罗宁"] = "默认",
		["倾颜 - 熊猫酒仙"] = "默认",
		["西园寺恋 - 罗宁"] = "默认",
		["安苏宠物批发 - 安苏"] = "默认",
		["Reneebaby - 罗宁"] = "默认",
		["放狠话高手 - 安苏"] = "默认",
		["奶凶的小萝莉 - 蜘蛛王国"] = "默认",
	},
	["profiles"] = {
		["默认"] = {
			["rules"] = {
				{
					["enabled"] = false,
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "光环",
					["id"] = "auras",
				}, -- [1]
				{
					["enabled"] = false,
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "单位姓名板",
					["id"] = "plates",
				}, -- [2]
				{
					["enabled"] = false,
					["patterns"] = {
						"ActionButton", -- [1]
					},
					["name"] = "动作条",
					["id"] = "actions",
				}, -- [3]
			},
			["themes"] = {
				["默认"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
