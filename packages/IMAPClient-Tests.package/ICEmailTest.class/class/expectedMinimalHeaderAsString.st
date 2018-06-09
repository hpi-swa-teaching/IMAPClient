constants
expectedMinimalHeaderAsString

	^ 
		'Content-Type: text/plain; charset=ISO-8859-1', String cr,
		'Content-Transfer-Encoding: base64', String cr,
		'from: sender', String cr,
		'to: receiver', String cr,
		'subject: subject text', String cr,
		'date: Fri, 10 Jun 2016 12:51:42 +0200'