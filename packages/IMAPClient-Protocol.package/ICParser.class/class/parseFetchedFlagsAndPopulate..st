parsing
parseFetchedFlagsAndPopulate: aResponseStringArray
	
	| uidPart uid |
	
 	^ (aResponseStringArray collect: [:line |
		uidPart := (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ Dictionary new].
		uid := (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ Dictionary new].
		self buildFlagsAssociationFor: uid from: line]) as: Dictionary