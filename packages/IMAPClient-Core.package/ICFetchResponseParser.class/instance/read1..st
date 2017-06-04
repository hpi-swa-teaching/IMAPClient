as yet unclassified
read1: aChar
	((aChar == $*)
		ifTrue:
			[self state: 2] 
		ifFalse: 
			[((aChar isSeparator)
				ifFalse: [self throwError])]).