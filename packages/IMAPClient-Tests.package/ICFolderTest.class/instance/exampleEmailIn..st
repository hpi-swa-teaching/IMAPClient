setup
exampleEmailIn: aFolder
	
	| email |
	email := ICEmail new.
	email
		body: 'i am very body';
		subject: 'urgent';
		from: 'coolkid@aol.com';
		to: 'me@me.com';
		folder: aFolder;
		date: 'Fri, 10 Jun 2016 12:52:11 +0200'.
	^ email