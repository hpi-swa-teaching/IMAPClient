constants
givenJsonObject

	| header object|
	Transcript show: 'Debug'.
	Transcript show: JsonObject. 	
	header := JsonObject newFrom: {
		'date' ->  'Fri, 10 Jun 2016 12:51:42 +0200'.
		'from' -> 'sender'.
		'subject' -> 'subject text'.
		'flagged' -> false.
		'seen' -> false.
		'contentType' -> 'text/plain;  charset="iso-8859-1"'.
		'contentTransferEncoding' -> 'quoted-printable'.
		'to' -> #('receiver1' 'receiver2') }.
		
	object := JsonObject newFrom: {
		'header' -> header.
		'body' -> 'body text' }.
		
	^object 