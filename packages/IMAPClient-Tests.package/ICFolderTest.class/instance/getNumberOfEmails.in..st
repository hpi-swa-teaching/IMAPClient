deleteFolder
getNumberOfEmails: aNumber in: aFolder 
	
	| collection |
	
	collection := OrderedCollection new.
	1 to: aNumber
		do: [:i | 
			| email |
			email := self getAnEmail.
			email messageID: i asString;
				uniqueID: i asString;
				folder: aFolder.
			collection add: email].
		
	^ collection