accessing
symbolArray
	
	^ symbolArray ifNil: [symbolArray := {
		#accountName.
		#serverAddress.
		#serverPort.
		#username.
		#password} as: OrderedCollection]