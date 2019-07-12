as yet unclassified
parseFetchFlagsOnly: aFolder

	"method to parse a flags-only response"
	| lastResponse |
	(self lastResponse isEmpty) 
		ifTrue: [^ '']. 
		
	"iterate through lastResponse and find flags for every uid"
 	lastResponse do: [:line |
		| uidPart uid email |
		uidPart := (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ ''].
		uid := (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ ''].
		uid := uid first.
		email := aFolder emails detect: [:mail | mail uniqueID asString = uid] ifNone: [^ ''].
				
		"only update maildir file, it something changes, this improves performance drastically"
		((email seen ~= (line includesSubString: '\Seen')) or: 
		(email flagged ~= (line includesSubString: '\Flagged')) or:
		(email deleted ~= (line includesSubString: '\Deleted'))) ifTrue: [
			email seen: (line includesSubString: '\Seen').
			email flagged: (line includesSubString: '\Flagged').
			email deleted: (line includesSubString: '\Deleted').
			email saveInMaildir]]