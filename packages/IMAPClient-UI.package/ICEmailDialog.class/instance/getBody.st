email access
getBody
	
	| mimeDoc body |
	
	body := email retrieveBody.
	mimeDoc := MailMessage new initializeFromString: body.
	
	^ mimeDoc bodyTextFormatted
	
	