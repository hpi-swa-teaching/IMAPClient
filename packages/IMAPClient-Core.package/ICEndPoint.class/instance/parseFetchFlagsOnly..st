protocol parse
parseFetchFlagsOnly: aFolder

	| flagsPerUID | 
	
	flagsPerUID := ICParser parseFetchFlagsOnly: self lastResponse.
	
	aFolder emails do: [:email | 
		flagsPerUID at: email uniqueID asString ifPresent: [:flags |
			((email seen ~= (flags includes: '\Seen')) or: 
			(email flagged ~= (flags includes: '\Flagged')) or:
			(email deleted ~= (flags includes: '\Deleted'))) ifTrue: [
				email seen: (flags includes: '\Seen').
				email flagged: (flags includes: '\Flagged').
				email deleted: (flags includes: '\Deleted').
				email saveInMaildir]]].