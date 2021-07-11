accessing
movedEmails

	^ movedEmails ifNil: [ movedEmails := OrderedCollection new]