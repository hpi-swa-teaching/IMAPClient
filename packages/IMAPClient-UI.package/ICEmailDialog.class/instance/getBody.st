email access
getBody
	
	|mimeDoc body |


	"retrieveBody will now also return content type. But now we need to find a way to render it nicely.
	MIMEDocument only supports not multipart messages. :(
	"
	
	body := email retrieveBody.
 
	mimeDoc := MailMessage new initializeFromString: body.
	^mimeDoc bodyTextFormatted
	
	