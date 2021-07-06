
ElvCharacterDB = {
	["ChatHistoryLog"] = {
	},
	["ChatEditHistory"] = {
		"/TMW", -- [1]
		"/run for k,v in pairs({['Blood Beasts']=54753,['Undead']=62255,['Cloud Serpents']=62254,['Gargon']=61160})do print(format('%s: %s', k, C_QuestLog.IsQuestFlaggedCompleted(v) and '\\124cff00ff00Yes\\124r' or '\\124cffff0000No\\124r')) end", -- [2]
		"/run for k,v in pairs({['Direhorns']=138430,['Mechanicals']=205154,['Feathermanes']=242155})do print(format('%s: %s', k, IsPlayerSpell(v) and '\\124cff00ff00Yes\\124r' or '\\124cffff0000No\\124r')) end", -- [3]
	},
	["ConvertKeybindings"] = true,
}
