endpoint interaction
retrieveBody
	
	self folder endpoint
		select: self folder path;
		fillBodyFor: self.

	^'Content-Type: ', (self contentType), Character cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding,
		Character cr, Character cr, self body