email access
getBody
	
	| body |
	body := email retrieveBody.
	body isAsciiString
		ifTrue: [^ body asTextFromHtml]
		ifFalse: [^ 'Der Inhalt dieser Mail kann leider nicht angezeigt werden. Bitte benutze einen besseren Browser.']