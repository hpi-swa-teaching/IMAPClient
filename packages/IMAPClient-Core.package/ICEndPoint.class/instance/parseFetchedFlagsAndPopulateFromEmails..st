protocol handling
parseFetchedFlagsAndPopulateFromEmails: anOrderedCollection

	| flagsPerUID |
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	anOrderedCollection do: [:email |
		flagsPerUID
			at: email uniqueID asString
			ifPresent: [:flags | self updateFlagsFor: email with: flags]]