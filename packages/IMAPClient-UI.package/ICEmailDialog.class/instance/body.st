email access
body
	
	| mimeDoc body |
	
	body := email retrieveBody.
	mimeDoc := MailMessage new initializeFromString: body.
	
	^ mimeDoc bodyTextFormatted