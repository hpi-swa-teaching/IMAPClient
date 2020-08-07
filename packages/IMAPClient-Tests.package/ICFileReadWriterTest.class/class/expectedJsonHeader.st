constants
expectedJsonHeader
		
	^ JsonObject newFrom: {
		'date' ->  'Fri, 10 Jun 2016 12:51:42 +0200'.
		'from' ->  'sender'.
		'subject' -> 'subject text'.
		'flagged' -> false.
		'seen' -> false.
		'contentType' -> 'text/plain;  charset="iso-8859-1"'.
		'contentTransferEncoding' -> 'quoted-printable'.
		'to' -> (OrderedCollection newFrom: {'receiver1'. 'receiver2'})}