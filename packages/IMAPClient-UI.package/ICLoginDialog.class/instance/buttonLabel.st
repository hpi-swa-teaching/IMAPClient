accessing
buttonLabel

	(self updateMode)
		ifTrue: [^ 'Update']
		ifFalse: [^ 'Add']