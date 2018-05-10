email access
getBody
	
	| body |
	body := email retrieveBody.
	self halt.
	body isAsciiString
		ifTrue: [^ body asTextFromHtml asString decodeQuotedPrintable]
		ifFalse: [^ 'Der Inhalt dieser Mail kann leider nicht angezeigt werden. Bitte benutze einen besseren Browser.']