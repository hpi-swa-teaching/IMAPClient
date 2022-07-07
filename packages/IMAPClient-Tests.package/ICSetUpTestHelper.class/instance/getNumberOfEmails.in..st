accessing
getNumberOfEmails: aNumber in: anICFolder 
	
	| collection |
	
	collection := OrderedCollection new.
	1 to: aNumber
		do: [:i | collection add: (self createAnEmail: anICFolder)].
		
	^ collection