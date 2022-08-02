constants
givenJsonObject

	^ JsonObject newFrom: {
		'header' -> (JsonObject newFrom: {
			'date' -> 'Fri, 10 Jun 2016 12:51:42 +0200'.
			'from' -> 'sender'.
			'subject' -> 'subject text'.
			'deleted' -> false.
			'flagged' -> false.
			'seen' -> false.
			'contentType' -> 'text/plain;  charset="iso-8859-1"'.
			'contentTransferEncoding' -> 'quoted-printable'.
			'to' -> #('receiver1' 'receiver2')}).
		'body' -> 'body text'.
		'messageID' -> nil.
		'id' -> '7gP0b5O2hfUb'.
		'uid' -> 0}