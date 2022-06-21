connection
closeConnection

	self rootFolder ifNotNil: [
		[self rootFolder endpoint close]
			on: Error
			do: [:e | self inform: 'Error occured during closing:', e]]