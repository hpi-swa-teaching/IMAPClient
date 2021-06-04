as yet unclassified
resetFlag: aFlag of: anEmail

	self sendCommand: (ICCommand resetFlag: aFlag asString for: anEmail messageID)