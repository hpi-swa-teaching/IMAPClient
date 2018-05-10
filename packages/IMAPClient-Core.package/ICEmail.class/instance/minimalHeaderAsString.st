print
minimalHeaderAsString

	^ 'from: ', self from, String cr,
		'to: ', self to, String cr,
		'subject: ', self subject, String cr,
		'date: ', self date, 
		'seen ', self seen,
		'important ', self important