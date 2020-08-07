read file
createHeaderFrom: aJsonObject

	aJsonObject ifNil: [^ nil].
	
	^ Dictionary newFrom: {
		#date -> (aJsonObject at: 'date').
		#from -> (aJsonObject at: 'from').
		#subject -> (aJsonObject at: 'subject').
		#contentType -> (aJsonObject at: 'contentType').
		#contentTransferEncoding -> (aJsonObject at: 'contentTransferEncoding').
		#to -> (self recipientsFrom: (aJsonObject at: 'to')).
		#seen -> (aJsonObject at: 'seen').
		#flagged -> (aJsonObject at: 'flagged')}