action - sorting
sortButtonLabelFlag

	self sortMethod = #flag
		ifTrue: [self reverseMails
			ifTrue: [ ^'Flag (desc)'.]
			ifFalse: [^'Flag (asc)'.]]
		ifFalse: [^'Flag']