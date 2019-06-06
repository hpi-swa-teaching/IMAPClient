helper
checkIfAccountnameUnused: aDictionary

	" return false if account with same name exists "
	ICHelper loadCredentialsIntoDictionaries 
		detect: [:credDict | (aDictionary at: 'name') = (credDict at: 'name')] 
		ifFound: [:credDict | self displayAccountnameExistsErrorMessage. ^false] 
		ifNone: [^true]