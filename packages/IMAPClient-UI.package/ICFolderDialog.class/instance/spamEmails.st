accessing
spamEmails

	| email email2 |
	email := ICEmailObject new.
	email
		body: 'i am body';
		subject: 'MAKE 350$/DAY SIMPLY FROM HOME';
		from: 'spam@spam.tk';
		to: 'me@me.com';
		date: 'Fri, 10 Jun 2016 12:51:42 +0200'.
	email2 := ICEmailObject new.
	email2
		body: 'i am very body';
		subject: 'urgent';
		from: 'coolkid@aol.com';
		to: 'me@me.com';
		date: 'Fri, 10 Jun 2016 12:52:11 +0200'.
	^ OrderedCollection with: email with: email2