as yet unclassified
read2: aChar
	((aChar == $ )
		ifTrue:
			[self state: 3]
		ifFalse: 
			[self throwError])