as yet unclassified
read11: aChar
	((aChar == $(  )
		ifTrue:
			[parentheses_counter := parentheses_counter +1]).
	
	((aChar == $)  )
		ifTrue:
			[parentheses_counter := parentheses_counter - 1]).

	((parentheses_counter = 0)
		ifTrue: [Transcript show: 'MAIL'; show: current_mail; cr. self state:1]
		ifFalse: [current_mail := current_mail, aChar]).