parsing
parseFetchFlagsOnly: aResponseStringArray

	(aResponseStringArray isEmpty) 
		ifTrue: [^ Dictionary new]. 
		
	"iterate through lastResponse and find flags for every uid"
 	^ (aResponseStringArray collect: [:line |
		| uidPart uid |
		uidPart := (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ Dictionary new].
		uid := (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ Dictionary new].

		Association key: uid first value: (self class flags select: [:flag |
			line includesSubString: flag])]) as: Dictionary