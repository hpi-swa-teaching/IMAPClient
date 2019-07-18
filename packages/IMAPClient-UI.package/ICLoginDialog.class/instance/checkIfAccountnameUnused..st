helper
checkIfAccountnameUnused: anAccountInfo

	" return false if account with same name exists "
	ICEndPoint connectionConfigurations
		detect: [:credDict | (anAccountInfo accountName) = (credDict at: 'accountName')] 
		ifFound: [:credDict | self displayAccountnameExistsErrorMessage. ^false] 
		ifNone: [^true]