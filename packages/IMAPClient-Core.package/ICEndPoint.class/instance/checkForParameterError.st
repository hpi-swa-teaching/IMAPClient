connection
checkForParameterError

	self responseIsParameterError ifTrue: [ ^ Error signal: self class errorBadParameter ].
	^ false