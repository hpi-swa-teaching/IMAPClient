keyboard handling
emailListKeyPress: aKey

	self emailListKeyPressMapping
		at: aKey asLowercase
		ifPresent: [:anAction | anAction value]