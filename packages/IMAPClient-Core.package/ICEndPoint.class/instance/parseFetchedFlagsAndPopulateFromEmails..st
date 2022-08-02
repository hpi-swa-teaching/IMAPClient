protocol handling
parseFetchedFlagsAndPopulateFromEmails: anOrderdCollection

	| flagsPerUID |
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.

	anOrderdCollection do: [:email |
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			self updateFlagsFor: email with: flags]]