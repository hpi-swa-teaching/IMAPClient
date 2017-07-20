as yet unclassified
read10: aChar 

	aChar == $(
		ifTrue: [ parentheses_counter := 1.
				self state: 11 ]
		ifFalse: [ self throwError ]