email access
getBody
	
	self email retrieveBody isAsciiString
		ifTrue: [^ self email retrieveBody asTextFromHtml asString decodeQuotedPrintable]
		ifFalse: [^ 'Der Inhalt dieser Mail kann leider nicht angezeigt werden. Bitte benutze einen besseren Browser.']