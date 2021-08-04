protocol handling
parseFetchedFlagsAndPopulate: aFolder

	| flagsPerUID  | 
	
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			(self mustBeUpdated: email with: flags) ifTrue: [
				self updateFlagsFor: email with: flags.
				self readWriter write: email]]]
