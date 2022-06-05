emptyFolder
getNumberOfEmails: aNumber in: aFolder 
	
	| collection |
	
	collection := OrderedCollection new.
	1 to: aNumber
		do: [:i | collection add: (self getAnEmail: aFolder with: i asString)].
		
	^ collection