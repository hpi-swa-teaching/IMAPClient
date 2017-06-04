as yet unclassified
read1: aChar
	((aChar == $*)
		ifTrue:
			[self state: 2]
		ifFalse: 
			[self throwError])