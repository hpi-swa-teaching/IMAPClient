constants
givenJsonObject

	| header |
		
	header := JsonObject newFrom: {
		'date' ->  'Fri, 10 Jun 2016 12:51:42 +0200'.
		'from' -> 'sender'.
		'subject' -> 'subject text'.
		'to' -> #('receiver1' 'receiver2') }.
		
	^ JsonObject newFrom: {
		'header' -> header.
		'body' -> 'body text' }