helper
accountnameUnused: anAccountInfo

	ICEndPoint connectionConfigurations
		detect: [:credDict | (anAccountInfo accountName) = (credDict at: 'accountName')] 
		ifFound: [:credDict | self displayAccountnameExistsErrorMessage. ^false] 
		ifNone: [^true].
	^ false