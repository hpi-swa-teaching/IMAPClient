running
testSortVisualisation

	| button |
	
	self sortButtonLabels do:
	[ :buttonLabel |
		button:= self subject findByLabel: buttonLabel.
		self assert: button label equals: buttonLabel.
		button click.
		self assert: button label equals: buttonLabel, ' (asc)'.
		button click.
		self assert: button label equals: buttonLabel, ' (desc)'].
