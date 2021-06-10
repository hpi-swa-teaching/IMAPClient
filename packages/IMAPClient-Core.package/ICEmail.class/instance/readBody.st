accessing
readBody

	self body isEmpty ifTrue: [
		self body: self retrieveBody.
		self folder endpoint readWriter write: self].
	^ body