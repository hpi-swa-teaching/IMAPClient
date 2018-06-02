read file
createHeaderFrom: aJsonObject

	aJsonObject ifNil: [ ^ nil ].
	
	^ Dictionary newFrom: {
		#date -> (aJsonObject at: 'date').
		#from -> (aJsonObject at: 'from').
		#subject -> (aJsonObject at: 'subject').
		#contentType -> (aJsonObject at: 'contentType').
		#contentTransferEncoding -> (aJsonObject at: 'contentTransferEncoding').
		#to -> (self getRecipientsFrom: (aJsonObject at: 'to')) }