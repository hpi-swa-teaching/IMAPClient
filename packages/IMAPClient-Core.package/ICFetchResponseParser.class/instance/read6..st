as yet unclassified
read6: aChar 

	aChar == $T
		ifTrue: [ self state: 7 ]
		ifFalse: [ self throwError ]