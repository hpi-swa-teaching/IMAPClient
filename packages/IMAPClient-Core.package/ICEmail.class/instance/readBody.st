accessing
readBody

	(body isNil or: [body isEmpty]) ifTrue: [
		self body: self retrieveBody.
		self folder endpoint readWriter write: self].
	^ body