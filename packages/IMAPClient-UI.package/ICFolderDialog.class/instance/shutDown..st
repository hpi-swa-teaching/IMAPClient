connection
shutDown: isGoingDown

	isGoingDown ifTrue: [self closeConnection]