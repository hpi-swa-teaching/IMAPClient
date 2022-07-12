action - update emails
switchFlag: aFlag for: anEmail to: aBool

	self endpoint switchFlag: aFlag for: anEmail to: aBool.
	anEmail header at: aFlag put: aBool.
	self retrieveFlagsFor: anEmail.
	self endpoint readWriter write: anEmail.
	self endpoint syncFromDisk