
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["额尔古纳右岸 - 白银之手"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["runOnce"] = {
				["resetPotionsToDefaults_20190717"] = true,
				["autoconvertDelaySweepToExtend_20190729"] = true,
				["resetRogueMfDOption_20200226"] = true,
				["enableAllOfTheThings_20180820"] = true,
				["resetAllPotions_20201209"] = true,
				["autoconvertGlowsForCustomGlow_20190326"] = true,
				["autoconvertDisplayToggle_20190621_1"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["packs"] = {
				["Marksmanship"] = {
					["source"] = "# https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210307,
					["author"] = "SimC",
					["desc"] = "Marksmanship Hunter\nMarch 1, 2021",
					["lists"] = {
						["trickshots"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.steady_focus.enabled & in_flight & buff.steady_focus.remains < 5",
								["action"] = "steady_shot",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "covenant.kyrian & cooldown.resonating_arrow.remains < gcd || ! covenant.kyrian & ! covenant.night_fae || covenant.night_fae & ( cooldown.wild_spirits.remains < gcd || cooldown.trueshot.remains > 55 ) || target.time_to_die < 10",
								["action"] = "double_tap",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled & tar_trap.remains < gcd & cooldown.flare.remains < gcd",
								["action"] = "tar_trap",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flare",
								["criteria"] = "tar_trap.up & runeforge.soulforge_embers.enabled",
								["line_cd"] = "25",
							}, -- [4]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "volley",
								["enabled"] = true,
							}, -- [8]
							{
								["action"] = "barrage",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "trueshot",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.remains >= execute_time & runeforge.surging_shots.enabled & buff.double_tap.down",
								["action"] = "rapid_fire",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["criteria"] = "buff.trick_shots.remains >= execute_time & ( buff.precise_shots.down || full_recharge_time < cast_time + gcd || buff.trueshot.up )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.remains >= execute_time",
								["action"] = "rapid_fire",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "buff.trick_shots.down || buff.precise_shots.up & focus > cost + action.aimed_shot.cost & ( ! talent.chimaera_shot.enabled || active_enemies > 3 )",
								["action"] = "multishot",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.up & focus > cost + action.aimed_shot.cost & active_enemies < 4",
								["action"] = "chimaera_shot",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.dead_eye.down",
								["action"] = "kill_shot",
							}, -- [17]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "focus > cost + action.aimed_shot.cost",
								["action"] = "multishot",
							}, -- [21]
							{
								["action"] = "steady_shot",
								["enabled"] = true,
							}, -- [22]
						},
						["default"] = {
							{
								["action"] = "counter_shot",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "counter_shot",
								["criteria"] = "runeforge.sephuzs_proclamation.enabled || soulbind.niyas_tools_poison.enabled || ( conduit.reversal_of_fortune.enabled & ! runeforge.sephuzs_proclamation.enabled )",
								["line_cd"] = "30",
							}, -- [2]
							{
								["action"] = "tranquilizing_shot",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["name"] = "dreadfire_vessel",
								["action"] = "dreadfire_vessel",
								["description"] = "Use this on cooldown if it's the only on-use. If you have another on-use with a longer cooldown, stack that with Trueshot when their cooldowns conflict, so wait until it's on cooldown to use this, otherwise continue to use on cooldown.",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ( buff.trueshot.up & ( ! trinket.t2.has_use_buff || trinket.t2.cooldown.remains || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration ) || buff.trueshot.down & ( trinket.t2.has_use_buff & trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration & trinket.t2.cooldown.remains - 5 < cooldown.trueshot.remains & cooldown.trueshot.remains > 20 || trinket.t1.cooldown.duration - 5 < cooldown.trueshot.remains ) || target.time_to_die < cooldown.trueshot.remains ) || ! trinket.t1.has_use_buff & ( trinket.t2.has_use_buff & ( buff.trueshot.down || trinket.t2.cooldown.remains > 5 ) & ( cooldown.trueshot.remains > 20 || trinket.t2.cooldown.remains - 5 > cooldown.trueshot.remains ) || ! trinket.t2.has_use_buff & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration || trinket.t2.cooldown.remains ) )",
								["action"] = "trinket1",
								["description"] = "If the trinket has a on-use buff, sync it with Trueshot. If two are competing for a Trueshot sync, use the stronger on-use effect. If an on-use buff is ready but another stronger on-use buff will also be ready by the time Trueshot comes back off cooldown, use it if the shared trinket cooldown won't interfere with the upcoming Trueshot sync. If an on-use buff could be used and still come back for a future Trueshot, use it. If a non-buff on-use is ready, use it if it won't interfere with potential on-use buffs trying to Trueshot sync or if the other trinket isn't an on-use, is a non-buff on-use with a longer cooldown, or isn't ready. If the fight is going to end before your next Trueshot, just start using trinkets to make sure they get used.",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ( buff.trueshot.up & ( ! trinket.t1.has_use_buff || trinket.t1.cooldown.remains || trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration ) || buff.trueshot.down & ( trinket.t1.has_use_buff & trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration & trinket.t1.cooldown.remains - 5 < cooldown.trueshot.remains & cooldown.trueshot.remains > 20 || trinket.t2.cooldown.duration - 5 < cooldown.trueshot.remains ) || target.time_to_die < cooldown.trueshot.remains ) || ! trinket.t2.has_use_buff & ( trinket.t1.has_use_buff & ( buff.trueshot.down || trinket.t1.cooldown.remains > 5 ) & ( cooldown.trueshot.remains > 20 || trinket.t1.cooldown.remains - 5 > cooldown.trueshot.remains ) || ! trinket.t1.has_use_buff & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration || trinket.t1.cooldown.remains ) )",
								["action"] = "trinket2",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || buff.trueshot.down & cooldown.trueshot.remains > 20 || fight_remains < cooldown.trueshot.remains",
								["action"] = "use_items",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "trickshots",
							}, -- [10]
						},
						["precombat"] = {
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled",
								["action"] = "tar_trap",
							}, -- [2]
							{
								["enabled"] = true,
								["precast_time"] = "10",
								["action"] = "double_tap",
								["criteria"] = "active_enemies > 1 || ! covenant.kyrian & ! talent.volley.enabled",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & ( ! covenant.kyrian & ! talent.volley.enabled || active_enemies < 2 )",
								["action"] = "aimed_shot",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2 || ( covenant.kyrian || talent.volley.enabled ) & active_enemies = 2",
								["action"] = "steady_shot",
							}, -- [5]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || fight_remains < 13",
								["action"] = "berserking",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || fight_remains < 16",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || fight_remains < 16",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up || fight_remains < 9",
								["action"] = "fireblood",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "lights_judgment",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.down",
								["action"] = "bag_of_tricks",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.trueshot.up & buff.bloodlust.up || buff.trueshot.up & target.health.pct < 20 || fight_remains < 26",
								["action"] = "potion",
							}, -- [7]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.steady_focus.enabled & ( prev_gcd.1.steady_shot & buff.steady_focus.remains < 5 || buff.steady_focus.down )",
								["action"] = "steady_shot",
							}, -- [1]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "covenant.kyrian & cooldown.resonating_arrow.remains < gcd || ! covenant.kyrian & ! covenant.night_fae || covenant.night_fae & ( cooldown.wild_spirits.remains < gcd || cooldown.trueshot.remains > 55 ) || target.time_to_die < 15",
								["action"] = "double_tap",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flare",
								["criteria"] = "tar_trap.up & runeforge.soulforge_embers.enabled",
								["line_cd"] = "25",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled & tar_trap.remains < gcd & cooldown.flare.remains < gcd",
								["action"] = "tar_trap",
							}, -- [5]
							{
								["action"] = "explosive_shot",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [9]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [10]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.down || ! talent.chimaera_shot.enabled || active_enemies < 2",
								["action"] = "volley",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.down || buff.resonating_arrow.up || buff.wild_spirits.up || buff.volley.up & active_enemies > 1",
								["action"] = "trueshot",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "aimed_shot",
								["cycle_targets"] = 1,
								["criteria"] = "buff.precise_shots.down || ( buff.trueshot.up || full_recharge_time < gcd + cast_time ) & ( ! talent.chimaera_shot.enabled || active_enemies < 2 ) || buff.trick_shots.remains > execute_time & active_enemies > 1",
								["description"] = "TODO: Review action.serpent_sting.in_flight_to_target",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max & ( buff.trueshot.down || ! runeforge.eagletalons_true_focus.enabled ) & ( buff.double_tap.down || talent.streamline.enabled )",
								["action"] = "rapid_fire",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.up || focus > cost + action.aimed_shot.cost",
								["action"] = "chimaera_shot",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.precise_shots.up || focus > cost + action.aimed_shot.cost",
								["action"] = "arcane_shot",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > duration",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "barrage",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max & ( buff.double_tap.down || talent.streamline.enabled )",
								["action"] = "rapid_fire",
							}, -- [20]
							{
								["action"] = "steady_shot",
								["enabled"] = true,
							}, -- [21]
						},
					},
					["version"] = 20210307,
					["warnings"] = "WARNING:  The import for 'trickshots' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 11: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 2: Converted 'conduit.X' to 'conduit.X.enabled' (1x).\nLine 2: Converted 'soulbind.X' to 'soulbind.X.enabled' (1x).\nLine 5: Converted 'trinket.1.X' to 'trinket.t1.X' (6x).\nLine 5: Converted 'trinket.2.X' to 'trinket.t2.X' (13x).\nLine 6: Converted 'trinket.1.X' to 'trinket.t1.X' (13x).\nLine 6: Converted 'trinket.2.X' to 'trinket.t2.X' (6x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 2: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 3: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 1: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 12: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 14: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 15: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 15: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 20: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 5 action lists.\n",
					["profile"] = "## Marksmanship Hunter\n## March 1, 2021\n\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/tar_trap,if=runeforge.soulforge_embers\nactions.precombat+=/double_tap,precast_time=10,if=active_enemies>1||!covenant.kyrian&!talent.volley\nactions.precombat+=/aimed_shot,if=active_enemies<3&(!covenant.kyrian&!talent.volley||active_enemies<2)\nactions.precombat+=/steady_shot,if=active_enemies>2||(covenant.kyrian||talent.volley)&active_enemies=2\n\nactions+=/counter_shot\nactions+=/counter_shot,line_cd=30,if=runeforge.sephuzs_proclamation||soulbind.niyas_tools_poison||(conduit.reversal_of_fortune&!runeforge.sephuzs_proclamation)\nactions+=/tranquilizing_shot\n# Use this on cooldown if it's the only on-use. If you have another on-use with a longer cooldown, stack that with Trueshot when their cooldowns conflict, so wait until it's on cooldown to use this, otherwise continue to use on cooldown.\nactions+=/use_item,name=dreadfire_vessel\n# If the trinket has a on-use buff, sync it with Trueshot. If two are competing for a Trueshot sync, use the stronger on-use effect. If an on-use buff is ready but another stronger on-use buff will also be ready by the time Trueshot comes back off cooldown, use it if the shared trinket cooldown won't interfere with the upcoming Trueshot sync. If an on-use buff could be used and still come back for a future Trueshot, use it. If a non-buff on-use is ready, use it if it won't interfere with potential on-use buffs trying to Trueshot sync or if the other trinket isn't an on-use, is a non-buff on-use with a longer cooldown, or isn't ready. If the fight is going to end before your next Trueshot, just start using trinkets to make sure they get used.\nactions+=/trinket1,if=trinket.1.has_use_buff&(buff.trueshot.up&(!trinket.2.has_use_buff||trinket.2.cooldown.remains||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)||buff.trueshot.down&(trinket.2.has_use_buff&trinket.2.cooldown.duration>=trinket.1.cooldown.duration&trinket.2.cooldown.remains-5<cooldown.trueshot.remains&cooldown.trueshot.remains>20||trinket.1.cooldown.duration-5<cooldown.trueshot.remains)||target.time_to_die<cooldown.trueshot.remains)||!trinket.1.has_use_buff&(trinket.2.has_use_buff&(buff.trueshot.down||trinket.2.cooldown.remains>5)&(cooldown.trueshot.remains>20||trinket.2.cooldown.remains-5>cooldown.trueshot.remains)||!trinket.2.has_use_buff&(!trinket.2.has_cooldown||trinket.2.cooldown.duration>=trinket.1.cooldown.duration||trinket.2.cooldown.remains))\nactions+=/trinket2,if=trinket.2.has_use_buff&(buff.trueshot.up&(!trinket.1.has_use_buff||trinket.1.cooldown.remains||trinket.2.cooldown.duration>=trinket.1.cooldown.duration)||buff.trueshot.down&(trinket.1.has_use_buff&trinket.1.cooldown.duration>=trinket.2.cooldown.duration&trinket.1.cooldown.remains-5<cooldown.trueshot.remains&cooldown.trueshot.remains>20||trinket.2.cooldown.duration-5<cooldown.trueshot.remains)||target.time_to_die<cooldown.trueshot.remains)||!trinket.2.has_use_buff&(trinket.1.has_use_buff&(buff.trueshot.down||trinket.1.cooldown.remains>5)&(cooldown.trueshot.remains>20||trinket.1.cooldown.remains-5>cooldown.trueshot.remains)||!trinket.1.has_use_buff&(!trinket.1.has_cooldown||trinket.1.cooldown.duration>=trinket.2.cooldown.duration||trinket.1.cooldown.remains))\nactions+=/use_items,if=buff.trueshot.up||buff.trueshot.down&cooldown.trueshot.remains>20||fight_remains<cooldown.trueshot.remains\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=st,if=active_enemies<3\nactions+=/call_action_list,name=trickshots,if=active_enemies>2\n\nactions.cds=berserking,if=buff.trueshot.up||fight_remains<13\nactions.cds+=/blood_fury,if=buff.trueshot.up||fight_remains<16\nactions.cds+=/ancestral_call,if=buff.trueshot.up||fight_remains<16\nactions.cds+=/fireblood,if=buff.trueshot.up||fight_remains<9\nactions.cds+=/lights_judgment,if=buff.trueshot.down\nactions.cds+=/bag_of_tricks,if=buff.trueshot.down\nactions.cds+=/potion,if=buff.trueshot.up&buff.bloodlust.up||buff.trueshot.up&target.health.pct<20||fight_remains<26\n\nactions.st=steady_shot,if=talent.steady_focus&(prev_gcd.1.steady_shot&buff.steady_focus.remains<5||buff.steady_focus.down)\nactions.st+=/kill_shot\nactions.st+=/double_tap,if=covenant.kyrian&cooldown.resonating_arrow.remains<gcd||!covenant.kyrian&!covenant.night_fae||covenant.night_fae&(cooldown.wild_spirits.remains<gcd||cooldown.trueshot.remains>55)||target.time_to_die<15\nactions.st+=/flare,line_cd=25,if=tar_trap.up&runeforge.soulforge_embers\nactions.st+=/tar_trap,if=runeforge.soulforge_embers&tar_trap.remains<gcd&cooldown.flare.remains<gcd\nactions.st+=/explosive_shot\nactions.st+=/wild_spirits\nactions.st+=/flayed_shot\nactions.st+=/death_chakram,if=focus+cast_regen<focus.max\nactions.st+=/a_murder_of_crows\nactions.st+=/resonating_arrow\nactions.st+=/volley,if=buff.precise_shots.down||!talent.chimaera_shot||active_enemies<2\nactions.st+=/trueshot,if=buff.precise_shots.down||buff.resonating_arrow.up||buff.wild_spirits.up||buff.volley.up&active_enemies>1\n# TODO: Review action.serpent_sting.in_flight_to_target\nactions.st+=/aimed_shot,cycle_targets=1,if=buff.precise_shots.down||(buff.trueshot.up||full_recharge_time<gcd+cast_time)&(!talent.chimaera_shot||active_enemies<2)||buff.trick_shots.remains>execute_time&active_enemies>1\nactions.st+=/rapid_fire,if=focus+cast_regen<focus.max&(buff.trueshot.down||!runeforge.eagletalons_true_focus)&(buff.double_tap.down||talent.streamline)\nactions.st+=/chimaera_shot,if=buff.precise_shots.up||focus>cost+action.aimed_shot.cost\nactions.st+=/arcane_shot,if=buff.precise_shots.up||focus>cost+action.aimed_shot.cost\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>duration\nactions.st+=/barrage,if=active_enemies>1\nactions.st+=/rapid_fire,if=focus+cast_regen<focus.max&(buff.double_tap.down||talent.streamline)\nactions.st+=/steady_shot\n\nactions.trickshots=steady_shot,if=talent.steady_focus&in_flight&buff.steady_focus.remains<5\nactions.trickshots+=/double_tap,if=covenant.kyrian&cooldown.resonating_arrow.remains<gcd||!covenant.kyrian&!covenant.night_fae||covenant.night_fae&(cooldown.wild_spirits.remains<gcd||cooldown.trueshot.remains>55)||target.time_to_die<10\nactions.trickshots+=/tar_trap,if=runeforge.soulforge_embers&tar_trap.remains<gcd&cooldown.flare.remains<gcd\nactions.trickshots+=/flare,line_cd=25,if=tar_trap.up&runeforge.soulforge_embers\nactions.trickshots+=/explosive_shot\nactions.trickshots+=/wild_spirits\nactions.trickshots+=/resonating_arrow\nactions.trickshots+=/volley\nactions.trickshots+=/barrage\nactions.trickshots+=/trueshot\nactions.trickshots+=/rapid_fire,if=buff.trick_shots.remains>=execute_time&runeforge.surging_shots&buff.double_tap.down\nactions.trickshots+=/aimed_shot,cycle_targets=1,if=buff.trick_shots.remains>=execute_time&(buff.precise_shots.down||full_recharge_time<cast_time+gcd||buff.trueshot.up)\nactions.trickshots+=/death_chakram,if=focus+cast_regen<focus.max\nactions.trickshots+=/rapid_fire,if=buff.trick_shots.remains>=execute_time\nactions.trickshots+=/multishot,if=buff.trick_shots.down||buff.precise_shots.up&focus>cost+action.aimed_shot.cost&(!talent.chimaera_shot||active_enemies>3)\nactions.trickshots+=/chimaera_shot,if=buff.precise_shots.up&focus>cost+action.aimed_shot.cost&active_enemies<4\nactions.trickshots+=/kill_shot,if=buff.dead_eye.down\nactions.trickshots+=/a_murder_of_crows\nactions.trickshots+=/flayed_shot\nactions.trickshots+=/serpent_sting,cycle_targets=1,if=refreshable\nactions.trickshots+=/multishot,if=focus>cost+action.aimed_shot.cost\nactions.trickshots+=/steady_shot",
					["spec"] = 254,
				},
				["Beast Mastery"] = {
					["source"] = "https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210314,
					["author"] = "SimC",
					["desc"] = "Beast Mastery Hunter\nMarch 14, 2021",
					["lists"] = {
						["default"] = {
							{
								["action"] = "counter_shot",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t1.has_use_buff & ( buff.aspect_of_the_wild.up & ( ! trinket.t2.has_use_buff || trinket.t2.cooldown.remains || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration ) || buff.aspect_of_the_wild.down & ( trinket.t2.has_use_buff & trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration & trinket.t2.cooldown.remains - 5 < cooldown.aspect_of_the_wild.remains & cooldown.aspect_of_the_wild.remains > 20 || trinket.t1.cooldown.duration - 5 < cooldown.aspect_of_the_wild.remains ) || target.time_to_die < cooldown.aspect_of_the_wild.remains ) || ! trinket.t1.has_use_buff & ( trinket.t2.has_use_buff & ( buff.aspect_of_the_wild.down || trinket.t2.cooldown.remains > 5 ) & ( cooldown.aspect_of_the_wild.remains > 20 || trinket.t2.cooldown.remains - 5 > cooldown.aspect_of_the_wild.remains ) || ! trinket.t2.has_use_buff & ( ! trinket.t2.has_cooldown || trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration || trinket.t2.cooldown.remains ) )",
								["action"] = "trinket1",
								["description"] = "If the trinket has a on-use buff, sync it with Aspect of the Wild. If two are competing for a Aspect of the Wild sync, use the stronger on-use effect. If an on-use buff is ready but another stronger on-use buff will also be ready by the time Aspect of the Wild comes back off cooldown, use it if the shared trinket cooldown won't interfere with the upcoming Aspect of the Wild sync. If an on-use buff could be used and still come back for a future Aspect of the Wild, use it. If a non-buff on-use is ready, use it if it won't interfere with potential on-use buffs trying to Aspect of the Wild sync or if the other trinket isn't an on-use, is a non-buff on-use with a longer cooldown, or isn't ready. If the fight is going to end before your next Aspect of the Wild, just start using trinkets to make sure they get used.",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "trinket.t2.has_use_buff & ( buff.aspect_of_the_wild.up & ( ! trinket.t1.has_use_buff || trinket.t1.cooldown.remains || trinket.t2.cooldown.duration >= trinket.t1.cooldown.duration ) || buff.aspect_of_the_wild.down & ( trinket.t1.has_use_buff & trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration & trinket.t1.cooldown.remains - 5 < cooldown.aspect_of_the_wild.remains & cooldown.aspect_of_the_wild.remains > 20 || trinket.t2.cooldown.duration - 5 < cooldown.aspect_of_the_wild.remains ) || target.time_to_die < cooldown.aspect_of_the_wild.remains ) || ! trinket.t2.has_use_buff & ( trinket.t1.has_use_buff & ( buff.aspect_of_the_wild.down || trinket.t1.cooldown.remains > 5 ) & ( cooldown.aspect_of_the_wild.remains > 20 || trinket.t1.cooldown.remains - 5 > cooldown.aspect_of_the_wild.remains ) || ! trinket.t1.has_use_buff & ( ! trinket.t1.has_cooldown || trinket.t1.cooldown.duration >= trinket.t2.cooldown.duration || trinket.t1.cooldown.remains ) )",
								["action"] = "trinket2",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "actions.default+=/use_items",
								["action"] = "tranquilizing_shot",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "prev_gcd.1.aspect_of_the_wild || fight_remains < 20",
								["action"] = "use_items",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 2",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "call_action_list",
								["list_name"] = "cleave",
							}, -- [8]
						},
						["precombat"] = {
							{
								["action"] = "summon_pet",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["name"] = "azsharas_font_of_power",
								["action"] = "azsharas_font_of_power",
							}, -- [3]
							{
								["enabled"] = true,
								["precast_time"] = "1.5",
								["action"] = "tar_trap",
								["criteria"] = "runeforge.soulforge_embers.enabled || runeforge.nessingwarys_trapping_apparatus.enabled",
							}, -- [4]
							{
								["enabled"] = true,
								["precast_time"] = "1.5",
								["action"] = "bestial_wrath",
								["criteria"] = "! talent.scent_of_blood.enabled & ! runeforge.soulforge_embers.enabled",
							}, -- [5]
							{
								["enabled"] = true,
								["precast_time"] = "1.3",
								["action"] = "aspect_of_the_wild",
								["description"] = "Adjusts the duration and cooldown of Aspect of the Wild and Primal Instincts by the duration of an unhasted GCD when they're used precombat. Because Aspect of the Wild reduces GCD by 200ms, this is 1.3 seconds.",
								["criteria"] = "! azerite.primal_instincts.enabled & ! essence.essence_of_the_focusing_iris.major & ( equipped.azsharas_font_of_power || ! equipped.cyclotronic_blast )",
							}, -- [6]
							{
								["enabled"] = true,
								["precast_time"] = "1.5",
								["action"] = "bestial_wrath",
								["description"] = "Adjusts the duration and cooldown of Bestial Wrath and Haze of Rage by the duration of an unhasted GCD when they're used precombat.",
								["criteria"] = "azerite.primal_instincts.enabled & ! essence.essence_of_the_focusing_iris.major & ( equipped.azsharas_font_of_power || ! equipped.cyclotronic_blast )",
							}, -- [7]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bestial_wrath.remains > 30",
								["action"] = "ancestral_call",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bestial_wrath.remains > 30",
								["action"] = "fireblood",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( buff.wild_spirits.up || ! covenant.night_fae & buff.aspect_of_the_wild.up & buff.bestial_wrath.up ) & ( fight_remains > cooldown.berserking.duration + duration || ( target.health.pct < 35 || ! talent.killer_instinct.enabled ) ) || fight_remains < 13",
								["action"] = "berserking",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( buff.wild_spirits.up || ! covenant.night_fae & buff.aspect_of_the_wild.up & buff.bestial_wrath.up ) & ( fight_remains > cooldown.blood_fury.duration + duration || ( target.health.pct < 35 || ! talent.killer_instinct.enabled ) ) || fight_remains < 16",
								["action"] = "blood_fury",
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.aspect_of_the_wild.up || fight_remains < 26",
								["action"] = "potion",
							}, -- [6]
						},
						["st"] = {
							{
								["action"] = "aspect_of_the_wild",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.frenzy.up & buff.frenzy.remains <= gcd",
								["action"] = "barbed_shot",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled & tar_trap.remains < gcd & cooldown.flare.remains < gcd",
								["action"] = "tar_trap",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "flare",
								["criteria"] = "tar_trap.up & runeforge.soulforge_embers.enabled",
								["line_cd"] = "25",
							}, -- [4]
							{
								["action"] = "bloodshed",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.bestial_wrath.remains < 12 * charges_fractional + gcd & talent.scent_of_blood.enabled || full_recharge_time < gcd & cooldown.bestial_wrath.remains || target.time_to_die < 9",
								["action"] = "barbed_shot",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.aspect_of_the_wild.up || fight_remains < 15",
								["action"] = "stampede",
							}, -- [11]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.up || fight_remains < 10",
								["action"] = "resonating_arrow",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.wild_spirits.remains > 15 || ! covenant.night_fae || fight_remains < 15",
								["action"] = "bestial_wrath",
							}, -- [14]
							{
								["action"] = "chimaera_shot",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.up || fight_remains < 10",
								["action"] = "resonating_arrow",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.wild_spirits.remains > 15 || ! covenant.night_fae || fight_remains < 15",
								["action"] = "bestial_wrath",
							}, -- [17]
							{
								["action"] = "chimaera_shot",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "kill_command",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || fight_remains < 5",
								["action"] = "bag_of_tricks",
							}, -- [20]
							{
								["action"] = "dire_beast",
								["enabled"] = true,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "( focus - cost + focus.regen * ( cooldown.kill_command.remains - 1 ) > action.kill_command.cost || cooldown.kill_command.remains > 1 + gcd ) || ( buff.bestial_wrath.up || buff.nessingwarys_trapping_apparatus.up ) & ! runeforge.qapla_eredun_war_order.enabled || fight_remains < 3",
								["action"] = "cobra_shot",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "buff.wild_spirits.up",
								["action"] = "barbed_shot",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || fight_remains < 5",
								["action"] = "arcane_pulse",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled || runeforge.nessingwarys_trapping_apparatus.enabled",
								["action"] = "tar_trap",
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.nessingwarys_trapping_apparatus.enabled",
								["action"] = "freezing_trap",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "( focus + focus.regen + 15 ) < focus.max",
								["action"] = "arcane_torrent",
							}, -- [27]
						},
						["cleave"] = {
							{
								["action"] = "aspect_of_the_wild",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "buff.frenzy.up & buff.frenzy.remains <= gcd",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "gcd - buff.beast_cleave.remains > 0.25",
								["action"] = "multishot",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled & tar_trap.remains < gcd & cooldown.flare.remains < gcd",
								["action"] = "tar_trap",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "flare",
								["criteria"] = "tar_trap.up & runeforge.soulforge_embers.enabled",
								["line_cd"] = "25",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [6]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "full_recharge_time < gcd & cooldown.bestial_wrath.remains || cooldown.bestial_wrath.remains < 12 + gcd & talent.scent_of_blood.enabled",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["action"] = "bestial_wrath",
								["enabled"] = true,
							}, -- [9]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.aspect_of_the_wild.up || fight_remains < 15",
								["action"] = "stampede",
							}, -- [11]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [12]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "chimaera_shot",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "bloodshed",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.frenzy.remains > execute_time",
								["action"] = "barrage",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "focus > cost + action.multishot.cost",
								["action"] = "kill_command",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.bestial_wrath.down || fight_remains < 5",
								["action"] = "bag_of_tricks",
							}, -- [19]
							{
								["action"] = "dire_beast",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "barbed_shot",
								["criteria"] = "target.time_to_die < 9",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "focus.time_to_max < gcd * 2",
								["action"] = "cobra_shot",
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.enabled || runeforge.nessingwarys_trapping_apparatus.enabled",
								["action"] = "tar_trap",
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.nessingwarys_trapping_apparatus.enabled",
								["action"] = "freezing_trap",
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "( focus + focus.regen + 30 ) < focus.max",
								["action"] = "arcane_torrent",
							}, -- [25]
						},
					},
					["version"] = 20210314,
					["warnings"] = "WARNING:  The import for 'default' required some automated changes.\nLine 2: Converted 'trinket.1.X' to 'trinket.t1.X' (6x).\nLine 2: Converted 'trinket.2.X' to 'trinket.t2.X' (13x).\nLine 3: Converted 'trinket.1.X' to 'trinket.t1.X' (13x).\nLine 3: Converted 'trinket.2.X' to 'trinket.t2.X' (6x).\n\nWARNING:  The import for 'precombat' required some automated changes.\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'cds' required some automated changes.\nLine 3: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 4: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nWARNING:  The import for 'st' required some automated changes.\nLine 2: Converted 'pet.X.Y...' to 'Y...' (2x).\nLine 3: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 9: Converted 'talent.X' to 'talent.X.enabled' (1x).\nLine 22: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 25: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 25: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 26: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nWARNING:  The import for 'cleave' required some automated changes.\nLine 2: Converted 'pet.X.Y...' to 'Y...' (2x).\nLine 3: Converted 'pet.X.Y...' to 'Y...' (1x).\nLine 4: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 5: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 8: Converted 'talent.X' to 'talent.X.enabled' at EOL (1x).\nLine 17: Converted 'pet.X.Y...' to 'Y...' (1x).\nLine 23: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\nLine 23: Converted 'runeforge.X' to 'runeforge.X.enabled' (1x).\nLine 24: Converted 'runeforge.X' to 'runeforge.X.enabled' at EOL (1x).\n\nImported 5 action lists.\n",
					["spec"] = 253,
					["profile"] = "## Beast Mastery Hunter\n## March 14, 2021\n\nactions.precombat=summon_pet\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/use_item,name=azsharas_font_of_power\nactions.precombat+=/tar_trap,precast_time=1.5,if=runeforge.soulforge_embers||runeforge.nessingwarys_trapping_apparatus\nactions.precombat+=/bestial_wrath,precast_time=1.5,if=!talent.scent_of_blood&!runeforge.soulforge_embers\n# Adjusts the duration and cooldown of Aspect of the Wild and Primal Instincts by the duration of an unhasted GCD when they're used precombat. Because Aspect of the Wild reduces GCD by 200ms, this is 1.3 seconds.\nactions.precombat+=/aspect_of_the_wild,precast_time=1.3,if=!azerite.primal_instincts.enabled&!essence.essence_of_the_focusing_iris.major&(equipped.azsharas_font_of_power||!equipped.cyclotronic_blast)\n# Adjusts the duration and cooldown of Bestial Wrath and Haze of Rage by the duration of an unhasted GCD when they're used precombat.\nactions.precombat+=/bestial_wrath,precast_time=1.5,if=azerite.primal_instincts.enabled&!essence.essence_of_the_focusing_iris.major&(equipped.azsharas_font_of_power||!equipped.cyclotronic_blast)\n\nactions+=/counter_shot\n# If the trinket has a on-use buff, sync it with Aspect of the Wild. If two are competing for a Aspect of the Wild sync, use the stronger on-use effect. If an on-use buff is ready but another stronger on-use buff will also be ready by the time Aspect of the Wild comes back off cooldown, use it if the shared trinket cooldown won't interfere with the upcoming Aspect of the Wild sync. If an on-use buff could be used and still come back for a future Aspect of the Wild, use it. If a non-buff on-use is ready, use it if it won't interfere with potential on-use buffs trying to Aspect of the Wild sync or if the other trinket isn't an on-use, is a non-buff on-use with a longer cooldown, or isn't ready. If the fight is going to end before your next Aspect of the Wild, just start using trinkets to make sure they get used.\nactions+=/trinket1,if=trinket.1.has_use_buff&(buff.aspect_of_the_wild.up&(!trinket.2.has_use_buff||trinket.2.cooldown.remains||trinket.1.cooldown.duration>=trinket.2.cooldown.duration)||buff.aspect_of_the_wild.down&(trinket.2.has_use_buff&trinket.2.cooldown.duration>=trinket.1.cooldown.duration&trinket.2.cooldown.remains-5<cooldown.aspect_of_the_wild.remains&cooldown.aspect_of_the_wild.remains>20||trinket.1.cooldown.duration-5<cooldown.aspect_of_the_wild.remains)||target.time_to_die<cooldown.aspect_of_the_wild.remains)||!trinket.1.has_use_buff&(trinket.2.has_use_buff&(buff.aspect_of_the_wild.down||trinket.2.cooldown.remains>5)&(cooldown.aspect_of_the_wild.remains>20||trinket.2.cooldown.remains-5>cooldown.aspect_of_the_wild.remains)||!trinket.2.has_use_buff&(!trinket.2.has_cooldown||trinket.2.cooldown.duration>=trinket.1.cooldown.duration||trinket.2.cooldown.remains))\nactions+=/trinket2,if=trinket.2.has_use_buff&(buff.aspect_of_the_wild.up&(!trinket.1.has_use_buff||trinket.1.cooldown.remains||trinket.2.cooldown.duration>=trinket.1.cooldown.duration)||buff.aspect_of_the_wild.down&(trinket.1.has_use_buff&trinket.1.cooldown.duration>=trinket.2.cooldown.duration&trinket.1.cooldown.remains-5<cooldown.aspect_of_the_wild.remains&cooldown.aspect_of_the_wild.remains>20||trinket.2.cooldown.duration-5<cooldown.aspect_of_the_wild.remains)||target.time_to_die<cooldown.aspect_of_the_wild.remains)||!trinket.2.has_use_buff&(trinket.1.has_use_buff&(buff.aspect_of_the_wild.down||trinket.1.cooldown.remains>5)&(cooldown.aspect_of_the_wild.remains>20||trinket.1.cooldown.remains-5>cooldown.aspect_of_the_wild.remains)||!trinket.1.has_use_buff&(!trinket.1.has_cooldown||trinket.1.cooldown.duration>=trinket.2.cooldown.duration||trinket.1.cooldown.remains))\n# actions+=/use_items\nactions+=/tranquilizing_shot\nactions+=/use_items,if=prev_gcd.1.aspect_of_the_wild||fight_remains<20\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=st,if=active_enemies<2\nactions+=/call_action_list,name=cleave,if=active_enemies>1\n\nactions.cds=ancestral_call,if=cooldown.bestial_wrath.remains>30\nactions.cds+=/fireblood,if=cooldown.bestial_wrath.remains>30\nactions.cds+=/berserking,if=(buff.wild_spirits.up||!covenant.night_fae&buff.aspect_of_the_wild.up&buff.bestial_wrath.up)&(fight_remains>cooldown.berserking.duration+duration||(target.health.pct<35||!talent.killer_instinct))||fight_remains<13\nactions.cds+=/blood_fury,if=(buff.wild_spirits.up||!covenant.night_fae&buff.aspect_of_the_wild.up&buff.bestial_wrath.up)&(fight_remains>cooldown.blood_fury.duration+duration||(target.health.pct<35||!talent.killer_instinct))||fight_remains<16\nactions.cds+=/lights_judgment\nactions.cds+=/potion,if=buff.aspect_of_the_wild.up||fight_remains<26\n\nactions.cleave=aspect_of_the_wild\nactions.cleave+=/barbed_shot,cycle_targets=1,if=pet.main.buff.frenzy.up&pet.main.buff.frenzy.remains<=gcd\nactions.cleave+=/multishot,if=gcd-pet.main.buff.beast_cleave.remains>0.25\nactions.cleave+=/tar_trap,if=runeforge.soulforge_embers&tar_trap.remains<gcd&cooldown.flare.remains<gcd\nactions.cleave+=/flare,line_cd=25,if=tar_trap.up&runeforge.soulforge_embers\nactions.cleave+=/death_chakram,if=focus+cast_regen<focus.max\nactions.cleave+=/wild_spirits\nactions.cleave+=/barbed_shot,cycle_targets=1,if=full_recharge_time<gcd&cooldown.bestial_wrath.remains||cooldown.bestial_wrath.remains<12+gcd&talent.scent_of_blood\nactions.cleave+=/bestial_wrath\nactions.cleave+=/resonating_arrow\nactions.cleave+=/stampede,if=buff.aspect_of_the_wild.up||fight_remains<15\nactions.cleave+=/flayed_shot\nactions.cleave+=/kill_shot\nactions.cleave+=/chimaera_shot\nactions.cleave+=/bloodshed\nactions.cleave+=/a_murder_of_crows\nactions.cleave+=/barrage,if=pet.main.buff.frenzy.remains>execute_time\nactions.cleave+=/kill_command,if=focus>cost+action.multishot.cost\nactions.cleave+=/bag_of_tricks,if=buff.bestial_wrath.down||fight_remains<5\nactions.cleave+=/dire_beast\nactions.cleave+=/barbed_shot,cycle_targets=1,if=target.time_to_die<9\nactions.cleave+=/cobra_shot,if=focus.time_to_max<gcd*2\nactions.cleave+=/tar_trap,if=runeforge.soulforge_embers||runeforge.nessingwarys_trapping_apparatus\nactions.cleave+=/freezing_trap,if=runeforge.nessingwarys_trapping_apparatus\nactions.cleave+=/arcane_torrent,if=(focus+focus.regen+30)<focus.max\n\nactions.st=aspect_of_the_wild\nactions.st+=/barbed_shot,if=pet.main.buff.frenzy.up&pet.main.buff.frenzy.remains<=gcd\nactions.st+=/tar_trap,if=runeforge.soulforge_embers&tar_trap.remains<gcd&cooldown.flare.remains<gcd\nactions.st+=/flare,line_cd=25,if=tar_trap.up&runeforge.soulforge_embers\nactions.st+=/bloodshed\nactions.st+=/wild_spirits\nactions.st+=/flayed_shot\nactions.st+=/kill_shot\nactions.st+=/barbed_shot,if=cooldown.bestial_wrath.remains<12*charges_fractional+gcd&talent.scent_of_blood||full_recharge_time<gcd&cooldown.bestial_wrath.remains||target.time_to_die<9\nactions.st+=/death_chakram,if=focus+cast_regen<focus.max\nactions.st+=/stampede,if=buff.aspect_of_the_wild.up||fight_remains<15\nactions.st+=/a_murder_of_crows\nactions.st+=/resonating_arrow,if=buff.bestial_wrath.up||fight_remains<10\nactions.st+=/bestial_wrath,if=cooldown.wild_spirits.remains>15||!covenant.night_fae||fight_remains<15\nactions.st+=/chimaera_shot\nactions.st+=/resonating_arrow,if=buff.bestial_wrath.up||fight_remains<10\nactions.st+=/bestial_wrath,if=cooldown.wild_spirits.remains>15||!covenant.night_fae||fight_remains<15\nactions.st+=/chimaera_shot\nactions.st+=/kill_command\nactions.st+=/bag_of_tricks,if=buff.bestial_wrath.down||fight_remains<5\nactions.st+=/dire_beast\nactions.st+=/cobra_shot,if=(focus-cost+focus.regen*(cooldown.kill_command.remains-1)>action.kill_command.cost||cooldown.kill_command.remains>1+gcd)||(buff.bestial_wrath.up||buff.nessingwarys_trapping_apparatus.up)&!runeforge.qapla_eredun_war_order||fight_remains<3\nactions.st+=/barbed_shot,if=buff.wild_spirits.up\nactions.st+=/arcane_pulse,if=buff.bestial_wrath.down||fight_remains<5\nactions.st+=/tar_trap,if=runeforge.soulforge_embers||runeforge.nessingwarys_trapping_apparatus\nactions.st+=/freezing_trap,if=runeforge.nessingwarys_trapping_apparatus\nactions.st+=/arcane_torrent,if=(focus+focus.regen+15)<focus.max",
				},
				["Survival"] = {
					["source"] = "# https://github.com/simulationcraft/simc/",
					["builtIn"] = true,
					["date"] = 20210117,
					["author"] = "SimC",
					["desc"] = "# Survival Hunter\n# January 17, 2021",
					["lists"] = {
						["apst"] = {
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "! dot.serpent_sting.ticking & target.time_to_die > 7",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "coordinated_assault",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [8]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd || focus + cast_regen < focus.max & ( next_wi_bomb.volatile & dot.serpent_sting.ticking & dot.serpent_sting.refreshable || next_wi_bomb.pheromone & ! buff.mongoose_fury.up & focus + cast_regen < focus.max - action.kill_command.cast_regen * 3 ) || time_to_die < 10",
								["action"] = "wildfire_bomb",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! runeforge.rylakstalkers_confounding_strikes.equipped",
								["action"] = "carve",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! runeforge.rylakstalkers_confounding_strikes.equipped & cooldown.wildfire_bomb.full_recharge_time > spell_targets & ( charges_fractional > 2.5 || dot.shrapnel_bomb.ticking )",
								["action"] = "butchery",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up & buff.mongoose_fury.remains < focus / ( action.mongoose_bite.cost - cast_regen ) * gcd & ! buff.wild_spirits.remains || buff.mongoose_fury.remains & next_wi_bomb.pheromone",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "full_recharge_time < gcd & focus + cast_regen < focus.max",
								["cycle_targets"] = 1,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "buff.tip_of_the_spear.stack = 3 || dot.shrapnel_bomb.ticking",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "dot.shrapnel_bomb.ticking",
								["action"] = "mongoose_bite",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & target.time_to_die > 7",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "next_wi_bomb.shrapnel & focus > action.mongoose_bite.cost * 2 & dot.serpent_sting.remains > 5 * gcd",
								["action"] = "wildfire_bomb",
							}, -- [19]
							{
								["action"] = "chakrams",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.rylakstalkers_confounding_strikes.equipped",
								["action"] = "wildfire_bomb",
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up || focus + action.kill_command.cast_regen > focus.max - 15 || dot.shrapnel_bomb.ticking || buff.wild_spirits.remains",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["criteria"] = "next_wi_bomb.volatile & dot.serpent_sting.ticking || next_wi_bomb.pheromone || next_wi_bomb.shrapnel & focus > 50",
								["action"] = "wildfire_bomb",
							}, -- [25]
						},
						["precombat"] = {
							{
								["action"] = "summon_pet",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "bottled_flayedwing_toxin",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.soulforge_embers.equipped",
								["action"] = "tar_trap",
							}, -- [3]
							{
								["action"] = "steel_trap",
								["enabled"] = true,
							}, -- [4]
						},
						["default"] = {
							{
								["action"] = "muzzle",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "tranquilizing_shot",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "cds",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & ! talent.alpha_predator.enabled & ! talent.wildfire_infusion.enabled",
								["action"] = "call_action_list",
								["list_name"] = "bop",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & talent.alpha_predator.enabled & ! talent.wildfire_infusion.enabled",
								["action"] = "call_action_list",
								["list_name"] = "apbop",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & talent.alpha_predator.enabled & talent.wildfire_infusion.enabled",
								["action"] = "call_action_list",
								["list_name"] = "apst",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3 & ! talent.alpha_predator.enabled & talent.wildfire_infusion.enabled",
								["action"] = "call_action_list",
								["list_name"] = "st",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "cleave",
							}, -- [9]
							{
								["action"] = "arcane_torrent",
								["enabled"] = true,
							}, -- [10]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "talent.hydras_bite.enabled & buff.vipers_venom.remains & buff.vipers_venom.remains < gcd",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd",
								["action"] = "wildfire_bomb",
							}, -- [4]
							{
								["action"] = "chakrams",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.shrapnel_bomb.ticking & ( dot.internal_bleeding.stack < 2 || dot.shrapnel_bomb.remains < gcd )",
								["action"] = "butchery",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "dot.shrapnel_bomb.ticking",
								["action"] = "carve",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [8]
							{
								["action"] = "coordinated_assault",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "charges_fractional > 2.5 & cooldown.wildfire_bomb.full_recharge_time > spell_targets / 2",
								["action"] = "butchery",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.wildfire_bomb.full_recharge_time > spell_targets / 2 & talent.alpha_predator.enabled",
								["action"] = "carve",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & full_recharge_time < gcd & ( runeforge.nessingwarys_trapping_apparatus.equipped & cooldown.freezing_trap.remains & cooldown.tar_trap.remains || ! runeforge.nessingwarys_trapping_apparatus.equipped )",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! dot.wildfire_bomb.ticking",
								["action"] = "wildfire_bomb",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( ! next_wi_bomb.shrapnel || ! talent.wildfire_infusion.enabled ) & cooldown.wildfire_bomb.full_recharge_time > spell_targets / 2",
								["action"] = "butchery",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.wildfire_bomb.full_recharge_time > spell_targets / 2",
								["action"] = "carve",
							}, -- [16]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "steel_trap",
								["enabled"] = true,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable & talent.hydras_bite.enabled & target.time_to_die > 8",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["action"] = "carve",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & ( runeforge.nessingwarys_trapping_apparatus.equipped & cooldown.freezing_trap.remains & cooldown.tar_trap.remains || ! runeforge.nessingwarys_trapping_apparatus.equipped )",
								["cycle_targets"] = 1,
							}, -- [23]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable",
								["cycle_targets"] = 1,
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["cycle_targets"] = 1,
							}, -- [25]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [26]
						},
						["st"] = {
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "buff.vipers_venom.up & buff.vipers_venom.remains < gcd || ! ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "buff.tip_of_the_spear.stack = 3",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["action"] = "coordinated_assault",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "full_recharge_time < gcd & focus + cast_regen < focus.max || ( next_wi_bomb.volatile & dot.serpent_sting.ticking & dot.serpent_sting.refreshable || next_wi_bomb.pheromone & focus + cast_regen < focus.max - action.kill_command.cast_regen * 3 & ! buff.mongoose_fury.remains )",
								["action"] = "wildfire_bomb",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & ( runeforge.nessingwarys_trapping_apparatus.equipped & cooldown.freezing_trap.remains & cooldown.tar_trap.remains || ! runeforge.nessingwarys_trapping_apparatus.equipped )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! runeforge.rylakstalkers_confounding_strikes.equipped",
								["action"] = "carve",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! runeforge.rylakstalkers_confounding_strikes.equipped & cooldown.wildfire_bomb.full_recharge_time > spell_targets & ( charges_fractional > 2.5 || dot.shrapnel_bomb.ticking )",
								["action"] = "butchery",
							}, -- [14]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "dot.shrapnel_bomb.ticking || buff.mongoose_fury.stack = 5",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "refreshable || buff.vipers_venom.up",
								["cycle_targets"] = 1,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "next_wi_bomb.shrapnel & dot.serpent_sting.remains > 5 * gcd || runeforge.rylakstalkers_confounding_strikes.equipped",
								["action"] = "wildfire_bomb",
							}, -- [18]
							{
								["action"] = "chakrams",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up || focus + action.kill_command.cast_regen > focus.max - 15 || dot.shrapnel_bomb.ticking",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "next_wi_bomb.volatile & dot.serpent_sting.ticking || next_wi_bomb.pheromone || next_wi_bomb.shrapnel",
								["action"] = "wildfire_bomb",
							}, -- [22]
						},
						["cds"] = {
							{
								["enabled"] = true,
								["criteria"] = "talent.terms_of_engagement.enabled & focus < focus.max",
								["action"] = "harpoon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.coordinated_assault.remains > 30",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.coordinated_assault.remains > 30",
								["action"] = "ancestral_call",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.coordinated_assault.remains > 30",
								["action"] = "fireblood",
							}, -- [4]
							{
								["action"] = "lights_judgment",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.kill_command.full_recharge_time > gcd",
								["action"] = "bag_of_tricks",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.coordinated_assault.remains > 60 || time_to_die < 13",
								["action"] = "berserking",
							}, -- [7]
							{
								["action"] = "muzzle",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 60 || buff.coordinated_assault.up",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.nessingwarys_trapping_apparatus.equipped & focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.nessingwarys_trapping_apparatus.equipped & focus + cast_regen < focus.max",
								["action"] = "freezing_trap",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runeforge.nessingwarys_trapping_apparatus.equipped & focus + cast_regen < focus.max || focus + cast_regen < focus.max & runeforge.soulforge_embers.equipped & tar_trap.remains < gcd & cooldown.flare.remains < gcd & ( active_enemies > 1 || active_enemies = 1 & time_to_die > 5 * gcd )",
								["action"] = "tar_trap",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "flare",
								["criteria"] = "focus + cast_regen < focus.max & tar_trap.up & runeforge.soulforge_embers.equipped & time_to_die > 4 * gcd",
								["line_cd"] = "25",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_die < focus / ( action.mongoose_bite.cost - cast_regen ) * gcd",
								["action"] = "kill_shot",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_die < focus / ( action.mongoose_bite.cost - cast_regen ) * gcd",
								["action"] = "mongoose_bite",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & target.time_to_die < focus / ( action.mongoose_bite.cost - cast_regen ) * gcd",
								["action"] = "raptor_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "target.distance >= 6",
								["action"] = "aspect_of_the_eagle",
							}, -- [17]
						},
						["bop"] = {
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "buff.vipers_venom.remains & buff.vipers_venom.remains < gcd",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & buff.nessingwarys_trapping_apparatus.up",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max & ! ticking & full_recharge_time < gcd",
								["action"] = "wildfire_bomb",
							}, -- [3]
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [5]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [7]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "buff.coordinated_assault.up & buff.coordinated_assault.remains < 1.5 * gcd",
								["cycle_targets"] = 1,
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.coordinated_assault.up & buff.coordinated_assault.remains < 1.5 * gcd",
								["cycle_targets"] = 1,
							}, -- [10]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "buff.tip_of_the_spear.stack = 3",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max & ! ticking & ( full_recharge_time < gcd || ! dot.wildfire_bomb.ticking & buff.mongoose_fury.remains > full_recharge_time - 1 * gcd || ! dot.wildfire_bomb.ticking & ! buff.mongoose_fury.remains ) || time_to_die < 18 & ! dot.wildfire_bomb.ticking",
								["action"] = "wildfire_bomb",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & ! runeforge.nessingwarys_trapping_apparatus.equipped || focus + cast_regen < focus.max & ( ( runeforge.nessingwarys_trapping_apparatus.equipped & ! talent.steel_trap.enabled & cooldown.freezing_trap.remains & cooldown.tar_trap.remains ) || ( runeforge.nessingwarys_trapping_apparatus.equipped & talent.steel_trap.enabled & cooldown.freezing_trap.remains & cooldown.tar_trap.remains & cooldown.steel_trap.remains ) ) || focus < action.mongoose_bite.cost",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "buff.vipers_venom.up & refreshable || dot.serpent_sting.refreshable & ! buff.coordinated_assault.up",
								["cycle_targets"] = 1,
							}, -- [16]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "! buff.coordinated_assault.up",
								["action"] = "coordinated_assault",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "buff.mongoose_fury.up || focus + action.kill_command.cast_regen > focus.max || buff.coordinated_assault.up",
								["action"] = "mongoose_bite",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "dot.wildfire_bomb.refreshable",
								["action"] = "wildfire_bomb",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "buff.vipers_venom.up",
								["cycle_targets"] = 1,
							}, -- [22]
						},
						["apbop"] = {
							{
								["action"] = "wild_spirits",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [2]
							{
								["action"] = "flayed_shot",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "death_chakram",
							}, -- [4]
							{
								["action"] = "kill_shot",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.coordinated_assault.up & buff.coordinated_assault.remains < 1.5 * gcd",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["criteria"] = "buff.coordinated_assault.up & buff.coordinated_assault.remains < 1.5 * gcd",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "flanking_strike",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max & ! ticking & ( full_recharge_time < gcd || ! dot.wildfire_bomb.ticking & buff.mongoose_fury.remains > full_recharge_time - 1 * gcd || ! dot.wildfire_bomb.ticking & ! buff.mongoose_fury.remains ) || time_to_die < 18 & ! dot.wildfire_bomb.ticking",
								["action"] = "wildfire_bomb",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "focus + cast_regen < focus.max",
								["action"] = "steel_trap",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up & buff.mongoose_fury.remains < focus / ( action.mongoose_bite.cost - cast_regen ) * gcd",
								["cycle_targets"] = 1,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "full_recharge_time < gcd & focus + cast_regen < focus.max & ( runeforge.nessingwarys_trapping_apparatus.equipped & cooldown.freezing_trap.remains & cooldown.tar_trap.remains || ! runeforge.nessingwarys_trapping_apparatus.equipped )",
								["cycle_targets"] = 1,
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "serpent_sting",
								["criteria"] = "dot.serpent_sting.refreshable & ! buff.mongoose_fury.remains",
								["cycle_targets"] = 1,
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "kill_command",
								["criteria"] = "focus + cast_regen < focus.max & ( buff.mongoose_fury.stack < 5 || focus < action.mongoose_bite.cost ) & ( runeforge.nessingwarys_trapping_apparatus.equipped & cooldown.freezing_trap.remains & cooldown.tar_trap.remains || ! runeforge.nessingwarys_trapping_apparatus.equipped )",
								["cycle_targets"] = 1,
							}, -- [14]
							{
								["action"] = "a_murder_of_crows",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "resonating_arrow",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "coordinated_assault",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "mongoose_bite",
								["criteria"] = "buff.mongoose_fury.up || focus + action.kill_command.cast_regen > focus.max || buff.coordinated_assault.up",
								["cycle_targets"] = 1,
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "raptor_strike",
								["cycle_targets"] = 1,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "wildfire_bomb",
							}, -- [20]
						},
					},
					["version"] = 20210117,
					["warnings"] = "WARNING:  The import for 'apst' required some automated changes.\nLine 14: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'cleave' required some automated changes.\nLine 10: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 12: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 15: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 16: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'cds' required some automated changes.\nLine 14: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 15: Converted SimC syntax % to Lua division operator (/) (1x).\nLine 16: Converted SimC syntax % to Lua division operator (/) (1x).\n\nWARNING:  The import for 'apbop' required some automated changes.\nLine 11: Converted SimC syntax % to Lua division operator (/) (1x).\n\nImported 8 action lists.\n",
					["profile"] = "# Survival Hunter\n# January 17, 2021\n\nactions.precombat+=/summon_pet\nactions.precombat+=/bottled_flayedwing_toxin\nactions.precombat+=/tar_trap,if=runeforge.soulforge_embers.equipped\nactions.precombat+=/steel_trap\n\nactions+=/muzzle\nactions+=/tranquilizing_shot\nactions+=/use_items\nactions+=/call_action_list,name=cds\nactions+=/call_action_list,name=bop,if=active_enemies<3&!talent.alpha_predator.enabled&!talent.wildfire_infusion.enabled\nactions+=/call_action_list,name=apbop,if=active_enemies<3&talent.alpha_predator.enabled&!talent.wildfire_infusion.enabled\nactions+=/call_action_list,name=apst,if=active_enemies<3&talent.alpha_predator.enabled&talent.wildfire_infusion.enabled\nactions+=/call_action_list,name=st,if=active_enemies<3&!talent.alpha_predator.enabled&talent.wildfire_infusion.enabled\nactions+=/call_action_list,name=cleave,if=active_enemies>2\nactions+=/arcane_torrent\n\nactions.apbop=wild_spirits\nactions.apbop+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.apbop+=/flayed_shot\nactions.apbop+=/death_chakram,if=focus+cast_regen<focus.max\nactions.apbop+=/kill_shot\nactions.apbop+=/mongoose_bite,cycle_targets=1,if=buff.coordinated_assault.up&buff.coordinated_assault.remains<1.5*gcd\nactions.apbop+=/raptor_strike,cycle_targets=1,if=buff.coordinated_assault.up&buff.coordinated_assault.remains<1.5*gcd\nactions.apbop+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.apbop+=/wildfire_bomb,if=focus+cast_regen<focus.max&!ticking&(full_recharge_time<gcd||!dot.wildfire_bomb.ticking&buff.mongoose_fury.remains>full_recharge_time-1*gcd||!dot.wildfire_bomb.ticking&!buff.mongoose_fury.remains)||time_to_die<18&!dot.wildfire_bomb.ticking\nactions.apbop+=/steel_trap,if=focus+cast_regen<focus.max\nactions.apbop+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up&buff.mongoose_fury.remains<focus%(action.mongoose_bite.cost-cast_regen)*gcd\nactions.apbop+=/kill_command,cycle_targets=1,if=full_recharge_time<gcd&focus+cast_regen<focus.max&(runeforge.nessingwarys_trapping_apparatus.equipped&cooldown.freezing_trap.remains&cooldown.tar_trap.remains||!runeforge.nessingwarys_trapping_apparatus.equipped)\nactions.apbop+=/serpent_sting,cycle_targets=1,if=dot.serpent_sting.refreshable&!buff.mongoose_fury.remains\nactions.apbop+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&(buff.mongoose_fury.stack<5||focus<action.mongoose_bite.cost)&(runeforge.nessingwarys_trapping_apparatus.equipped&cooldown.freezing_trap.remains&cooldown.tar_trap.remains||!runeforge.nessingwarys_trapping_apparatus.equipped)\nactions.apbop+=/a_murder_of_crows\nactions.apbop+=/resonating_arrow\nactions.apbop+=/coordinated_assault\nactions.apbop+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up||focus+action.kill_command.cast_regen>focus.max||buff.coordinated_assault.up\nactions.apbop+=/raptor_strike,cycle_targets=1\nactions.apbop+=/wildfire_bomb,if=!ticking\n\nactions.apst=death_chakram,if=focus+cast_regen<focus.max\nactions.apst+=/serpent_sting,cycle_targets=1,if=!dot.serpent_sting.ticking&target.time_to_die>7\nactions.apst+=/flayed_shot\nactions.apst+=/resonating_arrow\nactions.apst+=/wild_spirits\nactions.apst+=/coordinated_assault\nactions.apst+=/kill_shot\nactions.apst+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.apst+=/a_murder_of_crows\nactions.apst+=/wildfire_bomb,if=full_recharge_time<gcd||focus+cast_regen<focus.max&(next_wi_bomb.volatile&dot.serpent_sting.ticking&dot.serpent_sting.refreshable||next_wi_bomb.pheromone&!buff.mongoose_fury.up&focus+cast_regen<focus.max-action.kill_command.cast_regen*3)||time_to_die<10\nactions.apst+=/carve,if=active_enemies>1&!runeforge.rylakstalkers_confounding_strikes.equipped\nactions.apst+=/butchery,if=active_enemies>1&!runeforge.rylakstalkers_confounding_strikes.equipped&cooldown.wildfire_bomb.full_recharge_time>spell_targets&(charges_fractional>2.5||dot.shrapnel_bomb.ticking)\nactions.apst+=/steel_trap,if=focus+cast_regen<focus.max\nactions.apst+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up&buff.mongoose_fury.remains<focus%(action.mongoose_bite.cost-cast_regen)*gcd&!buff.wild_spirits.remains||buff.mongoose_fury.remains&next_wi_bomb.pheromone\nactions.apst+=/kill_command,cycle_targets=1,if=full_recharge_time<gcd&focus+cast_regen<focus.max\nactions.apst+=/raptor_strike,cycle_targets=1,if=buff.tip_of_the_spear.stack=3||dot.shrapnel_bomb.ticking\nactions.apst+=/mongoose_bite,if=dot.shrapnel_bomb.ticking\nactions.apst+=/serpent_sting,cycle_targets=1,if=refreshable&target.time_to_die>7\nactions.apst+=/wildfire_bomb,if=next_wi_bomb.shrapnel&focus>action.mongoose_bite.cost*2&dot.serpent_sting.remains>5*gcd\nactions.apst+=/chakrams\nactions.apst+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max\nactions.apst+=/wildfire_bomb,if=runeforge.rylakstalkers_confounding_strikes.equipped\nactions.apst+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up||focus+action.kill_command.cast_regen>focus.max-15||dot.shrapnel_bomb.ticking||buff.wild_spirits.remains\nactions.apst+=/raptor_strike,cycle_targets=1\nactions.apst+=/wildfire_bomb,if=next_wi_bomb.volatile&dot.serpent_sting.ticking||next_wi_bomb.pheromone||next_wi_bomb.shrapnel&focus>50\n\nactions.bop=serpent_sting,cycle_targets=1,if=buff.vipers_venom.remains&buff.vipers_venom.remains<gcd\nactions.bop+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&buff.nessingwarys_trapping_apparatus.up\nactions.bop+=/wildfire_bomb,if=focus+cast_regen<focus.max&!ticking&full_recharge_time<gcd\nactions.bop+=/wild_spirits\nactions.bop+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.bop+=/flayed_shot\nactions.bop+=/death_chakram,if=focus+cast_regen<focus.max\nactions.bop+=/kill_shot\nactions.bop+=/raptor_strike,cycle_targets=1,if=buff.coordinated_assault.up&buff.coordinated_assault.remains<1.5*gcd\nactions.bop+=/mongoose_bite,cycle_targets=1,if=buff.coordinated_assault.up&buff.coordinated_assault.remains<1.5*gcd\nactions.bop+=/a_murder_of_crows\nactions.bop+=/raptor_strike,cycle_targets=1,if=buff.tip_of_the_spear.stack=3\nactions.bop+=/wildfire_bomb,if=focus+cast_regen<focus.max&!ticking&(full_recharge_time<gcd||!dot.wildfire_bomb.ticking&buff.mongoose_fury.remains>full_recharge_time-1*gcd||!dot.wildfire_bomb.ticking&!buff.mongoose_fury.remains)||time_to_die<18&!dot.wildfire_bomb.ticking\nactions.bop+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&!runeforge.nessingwarys_trapping_apparatus.equipped||focus+cast_regen<focus.max&((runeforge.nessingwarys_trapping_apparatus.equipped&!talent.steel_trap.enabled&cooldown.freezing_trap.remains&cooldown.tar_trap.remains)||(runeforge.nessingwarys_trapping_apparatus.equipped&talent.steel_trap.enabled&cooldown.freezing_trap.remains&cooldown.tar_trap.remains&cooldown.steel_trap.remains))||focus<action.mongoose_bite.cost\nactions.bop+=/steel_trap,if=focus+cast_regen<focus.max\nactions.bop+=/serpent_sting,cycle_targets=1,if=buff.vipers_venom.up&refreshable||dot.serpent_sting.refreshable&!buff.coordinated_assault.up\nactions.bop+=/resonating_arrow\nactions.bop+=/coordinated_assault,if=!buff.coordinated_assault.up\nactions.bop+=/mongoose_bite,if=buff.mongoose_fury.up||focus+action.kill_command.cast_regen>focus.max||buff.coordinated_assault.up\nactions.bop+=/raptor_strike,cycle_targets=1\nactions.bop+=/wildfire_bomb,if=dot.wildfire_bomb.refreshable\nactions.bop+=/serpent_sting,cycle_targets=1,if=buff.vipers_venom.up\n\nactions.cds=harpoon,if=talent.terms_of_engagement.enabled&focus<focus.max\nactions.cds+=/blood_fury,if=cooldown.coordinated_assault.remains>30\nactions.cds+=/ancestral_call,if=cooldown.coordinated_assault.remains>30\nactions.cds+=/fireblood,if=cooldown.coordinated_assault.remains>30\nactions.cds+=/lights_judgment\nactions.cds+=/bag_of_tricks,if=cooldown.kill_command.full_recharge_time>gcd\nactions.cds+=/berserking,if=cooldown.coordinated_assault.remains>60||time_to_die<13\nactions.cds+=/muzzle\nactions.cds+=/potion,if=target.time_to_die<60||buff.coordinated_assault.up\nactions.cds+=/steel_trap,if=runeforge.nessingwarys_trapping_apparatus.equipped&focus+cast_regen<focus.max\nactions.cds+=/freezing_trap,if=runeforge.nessingwarys_trapping_apparatus.equipped&focus+cast_regen<focus.max\nactions.cds+=/tar_trap,if=runeforge.nessingwarys_trapping_apparatus.equipped&focus+cast_regen<focus.max||focus+cast_regen<focus.max&runeforge.soulforge_embers.equipped&tar_trap.remains<gcd&cooldown.flare.remains<gcd&(active_enemies>1||active_enemies=1&time_to_die>5*gcd)\nactions.cds+=/flare,line_cd=25,if=focus+cast_regen<focus.max&tar_trap.up&runeforge.soulforge_embers.equipped&time_to_die>4*gcd\nactions.cds+=/kill_shot,if=active_enemies=1&target.time_to_die<focus%(action.mongoose_bite.cost-cast_regen)*gcd\nactions.cds+=/mongoose_bite,if=active_enemies=1&target.time_to_die<focus%(action.mongoose_bite.cost-cast_regen)*gcd\nactions.cds+=/raptor_strike,if=active_enemies=1&target.time_to_die<focus%(action.mongoose_bite.cost-cast_regen)*gcd\nactions.cds+=/aspect_of_the_eagle,if=target.distance>=6\n\nactions.cleave=serpent_sting,cycle_targets=1,if=talent.hydras_bite.enabled&buff.vipers_venom.remains&buff.vipers_venom.remains<gcd\nactions.cleave+=/wild_spirits\nactions.cleave+=/resonating_arrow\nactions.cleave+=/wildfire_bomb,if=full_recharge_time<gcd\nactions.cleave+=/chakrams\nactions.cleave+=/butchery,if=dot.shrapnel_bomb.ticking&(dot.internal_bleeding.stack<2||dot.shrapnel_bomb.remains<gcd)\nactions.cleave+=/carve,if=dot.shrapnel_bomb.ticking\nactions.cleave+=/death_chakram,if=focus+cast_regen<focus.max\nactions.cleave+=/coordinated_assault\nactions.cleave+=/butchery,if=charges_fractional>2.5&cooldown.wildfire_bomb.full_recharge_time>spell_targets%2\nactions.cleave+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.cleave+=/carve,if=cooldown.wildfire_bomb.full_recharge_time>spell_targets%2&talent.alpha_predator.enabled\nactions.cleave+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&full_recharge_time<gcd&(runeforge.nessingwarys_trapping_apparatus.equipped&cooldown.freezing_trap.remains&cooldown.tar_trap.remains||!runeforge.nessingwarys_trapping_apparatus.equipped)\nactions.cleave+=/wildfire_bomb,if=!dot.wildfire_bomb.ticking\nactions.cleave+=/butchery,if=(!next_wi_bomb.shrapnel||!talent.wildfire_infusion.enabled)&cooldown.wildfire_bomb.full_recharge_time>spell_targets%2\nactions.cleave+=/carve,if=cooldown.wildfire_bomb.full_recharge_time>spell_targets%2\nactions.cleave+=/kill_shot\nactions.cleave+=/flayed_shot\nactions.cleave+=/a_murder_of_crows\nactions.cleave+=/steel_trap\nactions.cleave+=/serpent_sting,cycle_targets=1,if=refreshable&talent.hydras_bite.enabled&target.time_to_die>8\nactions.cleave+=/carve\nactions.cleave+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&(runeforge.nessingwarys_trapping_apparatus.equipped&cooldown.freezing_trap.remains&cooldown.tar_trap.remains||!runeforge.nessingwarys_trapping_apparatus.equipped)\nactions.cleave+=/serpent_sting,cycle_targets=1,if=refreshable\nactions.cleave+=/mongoose_bite,cycle_targets=1\nactions.cleave+=/raptor_strike,cycle_targets=1\n\nactions.st=flayed_shot\nactions.st+=/wild_spirits\nactions.st+=/resonating_arrow\nactions.st+=/serpent_sting,cycle_targets=1,if=buff.vipers_venom.up&buff.vipers_venom.remains<gcd||!ticking\nactions.st+=/death_chakram,if=focus+cast_regen<focus.max\nactions.st+=/raptor_strike,cycle_targets=1,if=buff.tip_of_the_spear.stack=3\nactions.st+=/coordinated_assault\nactions.st+=/kill_shot\nactions.st+=/wildfire_bomb,if=full_recharge_time<gcd&focus+cast_regen<focus.max||(next_wi_bomb.volatile&dot.serpent_sting.ticking&dot.serpent_sting.refreshable||next_wi_bomb.pheromone&focus+cast_regen<focus.max-action.kill_command.cast_regen*3&!buff.mongoose_fury.remains)\nactions.st+=/steel_trap,if=focus+cast_regen<focus.max\nactions.st+=/flanking_strike,if=focus+cast_regen<focus.max\nactions.st+=/kill_command,cycle_targets=1,if=focus+cast_regen<focus.max&(runeforge.nessingwarys_trapping_apparatus.equipped&cooldown.freezing_trap.remains&cooldown.tar_trap.remains||!runeforge.nessingwarys_trapping_apparatus.equipped)\nactions.st+=/carve,if=active_enemies>1&!runeforge.rylakstalkers_confounding_strikes.equipped\nactions.st+=/butchery,if=active_enemies>1&!runeforge.rylakstalkers_confounding_strikes.equipped&cooldown.wildfire_bomb.full_recharge_time>spell_targets&(charges_fractional>2.5||dot.shrapnel_bomb.ticking)\nactions.st+=/a_murder_of_crows\nactions.st+=/mongoose_bite,cycle_targets=1,if=dot.shrapnel_bomb.ticking||buff.mongoose_fury.stack=5\nactions.st+=/serpent_sting,cycle_targets=1,if=refreshable||buff.vipers_venom.up\nactions.st+=/wildfire_bomb,if=next_wi_bomb.shrapnel&dot.serpent_sting.remains>5*gcd||runeforge.rylakstalkers_confounding_strikes.equipped\nactions.st+=/chakrams\nactions.st+=/mongoose_bite,cycle_targets=1,if=buff.mongoose_fury.up||focus+action.kill_command.cast_regen>focus.max-15||dot.shrapnel_bomb.ticking\nactions.st+=/raptor_strike,cycle_targets=1\nactions.st+=/wildfire_bomb,if=next_wi_bomb.volatile&dot.serpent_sting.ticking||next_wi_bomb.pheromone||next_wi_bomb.shrapnel",
					["spec"] = 255,
				},
			},
			["specs"] = {
				[255] = {
					["custom2Name"] = "Custom 2",
					["package"] = "Survival",
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["use_harpoon"] = true,
						["ca_vop_overlap"] = false,
					},
					["aoe"] = 2,
					["gcdSync"] = false,
					["damageDots"] = false,
					["throttleTime"] = false,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["throttleRefresh"] = false,
					["buffPadding"] = 0,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "spectral_agility",
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 8,
					["nameplates"] = true,
					["damageRange"] = 0,
				},
				[254] = {
					["custom2Name"] = "Custom 2",
					["package"] = "Marksmanship",
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["prevent_hardcasts"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = false,
					["damageDots"] = false,
					["throttleTime"] = false,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["throttleRefresh"] = false,
					["buffPadding"] = 0,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "spectral_agility",
					["damage"] = true,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 6,
					["nameplates"] = false,
					["damageRange"] = 0,
				},
				[253] = {
					["custom2Name"] = "Custom 2",
					["package"] = "Beast Mastery",
					["enhancedRecheck"] = false,
					["enabled"] = true,
					["petbased"] = false,
					["custom1Name"] = "Custom 1",
					["cycle"] = false,
					["maxRefresh"] = 10,
					["damagePets"] = false,
					["settings"] = {
						["barbed_shot_grace_period"] = 0.5,
						["avoid_bw_overlap"] = false,
					},
					["aoe"] = 3,
					["gcdSync"] = false,
					["damageDots"] = false,
					["throttleTime"] = false,
					["debuffPadding"] = 0,
					["maxTime"] = 33,
					["throttleRefresh"] = false,
					["damage"] = true,
					["cycle_min"] = 6,
					["nameplateRange"] = 8,
					["potion"] = "spectral_agility",
					["buffPadding"] = 0,
					["potionsReset"] = 20180919.1,
					["damageExpiration"] = 3,
					["nameplates"] = false,
					["damageRange"] = 0,
				},
			},
		},
	},
}
