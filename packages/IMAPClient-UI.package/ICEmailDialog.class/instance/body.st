accessing - email
body
	
	| mimeDoc body |
	
	body := self email readBody.
	mimeDoc := MailMessage new initializeFromString: body.
	
	^ mimeDoc bodyTextFormatted