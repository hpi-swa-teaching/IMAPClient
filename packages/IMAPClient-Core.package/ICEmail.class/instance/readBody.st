accessing
readBody

	(body isNil or: [body isEmpty]) ifTrue: [
		self retrieveBody].
	^body.	
	