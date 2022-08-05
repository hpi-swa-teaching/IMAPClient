accessing - email
body

	
	^ (MailMessage new initializeFromString: self email body) bodyTextFormatted