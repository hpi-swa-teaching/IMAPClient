constants
configFiles

	| configs |
	
	configs := OrderedCollection new.
	configs add: self firstConfig.
	configs add: self secondConfig.
	
	^ configs