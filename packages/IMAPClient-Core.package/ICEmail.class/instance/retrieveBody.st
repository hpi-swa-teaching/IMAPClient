as yet unclassified
retrieveBody

	self folder endpoint
		select: self folder path;
		fillBodyFor: self.
	^ self body