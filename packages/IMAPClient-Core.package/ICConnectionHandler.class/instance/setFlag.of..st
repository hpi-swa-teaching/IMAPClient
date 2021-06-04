as yet unclassified
setFlag: aFlag of: anEmail

	self sendCommand: (ICCommand setFlag: aFlag asString for: anEmail messageID)