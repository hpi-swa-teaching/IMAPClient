protocol handling
parseFetchedFlagsAndPopulate: aFolder

	| flagsPerUID |
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	aFolder emails do: [:email |
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			"This mustBeUpdated-Boolean is for perfomance increase: You just write the Emails with new flags to the hard drive"
			(self mustBeUpdated: email with: flags) ifTrue: [
				self updateFlagsFor: email with: flags.
				self readWriter write: email]]].
	self syncFromDisk