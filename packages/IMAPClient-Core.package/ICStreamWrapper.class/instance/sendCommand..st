connection
sendCommand: aString

	Transcript show: 'SENDING: ', aString; cr.
	self stream sendCommand: aString