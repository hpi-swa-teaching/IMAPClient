protocol parse
parseFetchFlagsOnly: aFolder

	| flagsPerUID | 
	
	flagsPerUID := ICParser parseFetchFlagsOnly: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			((email seen ~= (flags contains: '\Seen')) or: 
			(email flagged ~= (flags contains: '\Flagged')) or:
			(email deleted ~= (flags contains: '\Deleted'))) ifTrue: [
				email seen: (flags contains: '\Seen').
				email flagged: (flags contains: '\Flagged').
				email deleted: (flags contains: '\Deleted').
				email saveInMaildir]]].