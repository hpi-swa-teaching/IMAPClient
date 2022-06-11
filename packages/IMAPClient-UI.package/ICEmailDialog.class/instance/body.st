accessing - email
body
	
	
	| mimeDoc|

	mimeDoc := MailMessage new initializeFromString: self email body.
	
	^ mimeDoc bodyTextFormatted