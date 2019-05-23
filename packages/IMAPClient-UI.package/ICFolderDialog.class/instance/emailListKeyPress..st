events
emailListKeyPress: aKey
	
	(self emailListKeyPressMapping includesKey: aKey asLowercase) ifTrue: [
		(self emailListKeyPressMapping at: aKey) value.
		^ true
	].
	^ false