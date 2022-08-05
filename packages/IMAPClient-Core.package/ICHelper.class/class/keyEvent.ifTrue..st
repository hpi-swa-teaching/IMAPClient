keyHandling
keyEvent: aKey ifTrue: aBlock

	| shouldLogin |
	Smalltalk os platformName = 'Win32'
		ifTrue: [shouldLogin := aKey keyValue = self winCarriageReturn]
		ifFalse: [shouldLogin := aKey keyValue = self linuxCarriageReturn].
	
	shouldLogin ifTrue: [aBlock value]