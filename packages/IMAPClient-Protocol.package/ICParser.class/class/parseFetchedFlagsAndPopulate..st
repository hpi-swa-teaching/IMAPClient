parsing
parseFetchedFlagsAndPopulate: aResponseStringArray
	
	| uidPart uid |
	
	(aResponseStringArray isEmpty) 
		ifTrue: [^ Dictionary new]. 
		
	"iterate through lastResponse and find flags for every uid"
 	^ (aResponseStringArray collect: [:line |
		uidPart := (line allRegexMatches: 'UID \d*') ifEmpty: [ ^ Dictionary new].
		uid := (uidPart first allRegexMatches: '[\d]+') ifEmpty: [ ^ Dictionary new].

		Association key: uid first value: (self flags select: [:flag |
			line includesSubString: flag])]) asDictionary