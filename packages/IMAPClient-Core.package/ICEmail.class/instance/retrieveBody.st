action
retrieveBody
	
	"this is the only action that the email has to be responsible for, because it is called when an email is opened"
	self folder endpoint isConnected ifTrue: [
	^'Content-Type: ', (self contentType), Character cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding,
		Character cr, Character cr, (self folder endpoint retrieveBody: self)]
	ifFalse: [self inform: 'No internet connection: Body is not loaded.']