*IMAPClient-UI
viewAttachment

	self containsViewableImage
		ifTrue: [^ self viewImage].
	self containsViewableText
		ifTrue: [ ^(StringHolder new contents: self bodyTextFormatted;
		 yourself)
		openLabel: (self name ifNil: ['(a message part)'])].
	self inform: 'Attachment is not supported'
	
	
		