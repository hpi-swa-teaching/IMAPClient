protocol handling
parseFetchedFlagsAndPopulate: aFolder

	| flagsPerUID mustBeUpdated | 
	
	flagsPerUID := ICParser parseFetchedFlagsAndPopulate: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			"This mustBeUpdated-Boolean is for perfomance increase: You just write the Emails with new flags to the hard drive" 
			"mustBeUpdated := ((email seen) xor: (flags includes: '\Seen')) or:
				((email flagged) xor: (flags includes: '\Flagged')) or:
				((email deleted) xor: (flags includes: '\Deleted')).
			mustBeUpdated ifTrue: ["
				email seen: (flags includes: '\Seen').
				email flagged: (flags includes: '\Flagged').
				email deleted: (flags includes: '\Deleted').
				self readWriter write: email]]"]"