action - update emails
switchFlag: aFlag for: anEmail to: aBool

	self endPoint switchFlag: aFlag for: anEmail to: aBool.
	anEmail header at: aFlag put: aBool.
	self endPoint readWriter write: anEmail.
	self endPoint syncFromDisk