helper
checkForAccountnameExistence: aDictionary

	" return false if account with same name exists "
	ICHelper loadCredentialsIntoDictionaries do: [ :credDict |
		((aDictionary at: 'name') = (credDict at: 'name'))
			ifTrue: [
				self displayAccountnameExistsErrorMessage.
				^ false ].].
	^ true