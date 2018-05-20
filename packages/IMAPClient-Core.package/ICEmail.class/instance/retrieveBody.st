fetch body
retrieveBody
	
	self body = ''
		ifTrue: [
			self folder endpoint
				select: self folder path;
				fillBodyFor: self].
	^ self body