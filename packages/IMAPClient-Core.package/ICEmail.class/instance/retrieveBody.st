fetch body
retrieveBody
	|mailbody|
	self folder endpoint
		select: self folder path;
		fillBodyFor: self.
	
	
	"add the Content-Type to mail body --> necessary for correct parsing"	
	mailbody := 'Content-Type: ', (self contentType), Character cr,
				  'Content-Transfer-Encoding: ', self contentTransferEncoding,
				  Character cr, Character cr, self body.
			
	
	^mailbody