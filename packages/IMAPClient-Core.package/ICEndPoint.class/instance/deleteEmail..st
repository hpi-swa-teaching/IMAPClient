delete
deleteEmail: anEmail

	self sendCommand: (self class deleteEmail: anEmail messageID).	
	self sendCommand: (self class moveEmail: anEmail messageID to: 'Trash').			
	self fetchNextResponse