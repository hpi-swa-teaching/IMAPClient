helper
accountnameUnused: anAccountInfo

	(anAccountInfo accountNameUnused) ifFalse: [ 
		self displayAccountnameExistsErrorMessage.
		^ false].
	^ true 