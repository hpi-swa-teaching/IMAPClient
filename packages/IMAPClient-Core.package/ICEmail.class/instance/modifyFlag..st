fetch body
modifyFlag: aFlag
		| anICEndPoint |
		anICEndPoint := folder endpoint select: self folder path.
		(self retrieveFlags at: aFlag)
			ifTrue: [anICEndPoint resetFlag: self and: aFlag]
			ifFalse: [anICEndPoint setFlag: self and: aFlag]