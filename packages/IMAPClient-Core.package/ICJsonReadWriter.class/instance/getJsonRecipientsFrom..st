as yet unclassified
getJsonRecipientsFrom: aDictionary

	| recipients | 
	
	recipients := OrderedCollection new.
	
	aDictionary do: [ :eachRecipient | recipients add: (JsonObject newFrom: { 'recipient' -> eachRecipient }) ].
	
	^ recipients