as yet unclassified
read11: aChar
	((aChar == $(  )
		ifTrue:
			[parentheses_counter := parentheses_counter +1]).
	
	((aChar == $)  )
		ifTrue:
			[parentheses_counter := parentheses_counter - 1]).

	((parentheses_counter = 0)
		ifTrue: [
			"Transcript show: current_mail; cr."
			emails add: (self endpoint parseFetchHeader: current_mail withId: current_uid). 
			self state: 1.
			self reset]
		ifFalse: [current_mail := current_mail, aChar]).