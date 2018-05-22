fetch body
retrieveBody
	|mailbody|
	self folder endpoint
		select: self folder path;
		fillBodyFor: self.
		
	mailbody := 'Content-Type: ', (self contentType), Character cr, Character cr, body.
	
	^mailbody