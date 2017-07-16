write file
getJsonRecipientsFrom: aDictionary

	| recipients | 
	aDictionary ifNil: [ ^ nil ].
	
	recipients := OrderedCollection new.
	aDictionary do: [ :eachRecipient | recipients add: (JsonObject newFrom: { 'recipient' -> eachRecipient }) ].
	
	^ recipients