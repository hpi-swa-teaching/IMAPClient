initialization
fetchHeaderResponseBeginning: aMessageId

	| responseBeginning |
	
	responseBeginning := '* ', aMessageId, ' FETCH (BODY[HEADER.FIELDS ("from" "to" "subject" "date")] {195}'.
	
	^ {responseBeginning}