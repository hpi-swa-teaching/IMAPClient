email access
body
	
	| mimeDoc body |
	
	body := self email retrieveBody.
	mimeDoc := MailMessage new initializeFromString: body.
	
	^ mimeDoc bodyTextFormatted