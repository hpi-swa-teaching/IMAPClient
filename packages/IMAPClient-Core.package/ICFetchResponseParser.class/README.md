An ICFetchResponseParser parses an IMAP-server response containing mails to a dictionary containing all these mails.

Instance Variables
	currentID:		The ID of the currently parsed mail
	currentMail:		The currently parsed mail
	emails:		The dictionary containing all mails
	reader:		The server response as a stream

