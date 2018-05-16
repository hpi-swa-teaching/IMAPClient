write file
createJsonHeaderFrom: aDictionary

	|jsonFile|
	aDictionary ifNil: [ ^ nil ].

	jsonFile := JsonObject newFrom: {
		'date' ->  (aDictionary at: #date ifAbsent: ['']).
		'from' -> (aDictionary at: #from ifAbsent: ['']).
		'subject' -> (aDictionary at: #subject ifAbsent: ['']).
		'to' -> (aDictionary at: #to ifAbsent: [''])}.
		
	^jsonFile    