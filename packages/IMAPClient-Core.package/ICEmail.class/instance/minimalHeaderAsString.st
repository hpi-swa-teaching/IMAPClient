print
minimalHeaderAsString

	^
		'Content-Type: ', self contentType, String cr,
		'Content-Transfer-Encoding: ', self contentTransferEncoding, String cr, 
		'from: ', self from, String cr,
		'to: ', self to, String cr,
		'subject: ', self subject, String cr,
		'date: ', self date