fetch body
modifyFlag: aFlag

		| anICEndPoint |
		
		self retrieveFlags.
		
		anICEndPoint := self folder endpoint.
		
		(self perform: aFlag)
			ifTrue: [anICEndPoint resetFlag: self and: aFlag]
			ifFalse: [anICEndPoint setFlag: self and: aFlag]