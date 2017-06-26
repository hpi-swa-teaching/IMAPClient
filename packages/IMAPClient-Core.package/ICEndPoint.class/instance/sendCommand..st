connection
sendCommand: aCommand
	Transcript show: 'SENDING: ', aCommand; cr.
	self stream sendCommand: aCommand