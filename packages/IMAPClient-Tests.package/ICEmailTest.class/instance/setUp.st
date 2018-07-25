accessing
setUp

	self 
		email: (ICEmail new
		body: 'body text';
		subject: 'subject text';
		from: 'sender';
		to: 'receiver';
		contentType: 'text/plain; charset=ISO-8859-1';
		contentTransferEncoding: 'base64';
		date: 'Fri, 10 Jun 2016 12:51:42 +0200')