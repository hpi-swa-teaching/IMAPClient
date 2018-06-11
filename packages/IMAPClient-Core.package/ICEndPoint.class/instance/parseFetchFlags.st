protocol parse
parseFetchFlags

	(self lastResponse isEmpty) 
		ifTrue: [^ ''] 
	 	ifFalse: [^ self lastResponse at: 1]  