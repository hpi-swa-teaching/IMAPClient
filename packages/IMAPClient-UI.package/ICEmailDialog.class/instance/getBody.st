email access
getBody
	
	|mimeDoc body |
	body := email retrieveBody.

	"retrieveBody will now also return content type. But now we need to find a way to render it nicely.
	MIMEDocument only supports not multipart messages. :(
	"
	mimeDoc := MailMessage from: body.	
	^mimeDoc bodyTextFormatted
	
	