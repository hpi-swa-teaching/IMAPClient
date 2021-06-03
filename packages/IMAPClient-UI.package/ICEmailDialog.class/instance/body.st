accessing - email
body
	
	| mimeDoc body |
	
	body := self email body.
	mimeDoc := MailMessage new initializeFromString: body.
	
	^ mimeDoc bodyTextFormatted