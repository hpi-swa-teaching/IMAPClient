as yet unclassified
read7: aChar 

	aChar == $C
		ifTrue: [ self state: 8 ]
		ifFalse: [ self throwError ]