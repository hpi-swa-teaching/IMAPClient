as yet unclassified
read3: aChar
	((aChar isDigit)
		ifTrue:
			[current_uid := current_uid, aChar. self state: 3]
		ifFalse: [
			((aChar = $ ) 
				ifTrue: [self state: 4]
				ifFalse: [self throwError])]).