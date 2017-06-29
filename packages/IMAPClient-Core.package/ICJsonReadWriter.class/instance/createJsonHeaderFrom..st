as yet unclassified
createJsonHeaderFrom: aDictionary

	aDictionary ifNil: [ ^ nil ].
	
	^ JsonObject newFrom: {
		'date' ->  (aDictionary at: #date).
		'from' -> (aDictionary at: #from).
		'subject' -> (aDictionary at: #subject).
		'to' -> (self getJsonRecipientsFrom: (aDictionary at: #to))}