constants
expectedMailObject

	^ ICEmail new
		body: 'body text';
		subject: 'subject text';
		from: 'sender';
		flagged: false;
		seen: false;
		contentType: 'text/plain;  charset="iso-8859-1"';
		contentTransferEncoding: 'quoted-printable';
		to: {'receiver1'. 'receiver2'};
		date: 'Fri, 10 Jun 2016 12:51:42 +0200'