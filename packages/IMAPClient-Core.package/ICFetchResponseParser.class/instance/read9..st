as yet unclassified
read9: aChar
	((aChar == $  )
		ifTrue:
			[self state: 10]
		ifFalse: 
			[self throwError])