accessing
body

	(body isNil or: [body isEmpty]) ifTrue: [
		self retrieveBody].
	^body.	
	