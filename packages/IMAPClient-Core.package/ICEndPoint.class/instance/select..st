message handling
select: aFolder

	self
		sendCommand: (self class selectCommand: aFolder);
		fetchNextResponse

	

	