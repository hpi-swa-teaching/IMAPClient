connection
closeConnection

	self rootFolder ifNotNil: [
		[self rootFolder endPoint close]
			on: Error
			do: [:e | self inform: 'Error occured during closing:', e]]