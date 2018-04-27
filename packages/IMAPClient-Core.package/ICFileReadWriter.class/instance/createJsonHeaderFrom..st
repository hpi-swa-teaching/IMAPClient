write file
createJsonHeaderFrom: aDictionary

	|jsonFile|
	aDictionary ifNil: [ ^ nil ].

	jsonFile := JsonObject newFrom: {
		'date' ->  (aDictionary at: #date).
		'from' -> (aDictionary at: #from).
		'subject' -> (aDictionary at: #subject).
		'to' -> (aDictionary at: #to) }.
		
	^jsonFile    