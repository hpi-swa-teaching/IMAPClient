read file
createHeaderFrom: aJsonObject

	aJsonObject ifNil: [ ^ nil ].
	
	^ Dictionary newFrom: {
		#date -> (aJsonObject at: 'date').
		#from -> (aJsonObject at: 'from').
		#subject -> (aJsonObject at: 'subject').
		#to -> (self getRecipientsFrom: (aJsonObject at: 'to')).
		#seen -> (aJsonObject at: 'seen').
		#important -> (aJsonObject at: 'important').}