action
retrieveBody
	
	self folder endpoint retrieveBody: self.

	^'Content-Type: ', (self contentType), Character cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding,
		Character cr, Character cr, self body