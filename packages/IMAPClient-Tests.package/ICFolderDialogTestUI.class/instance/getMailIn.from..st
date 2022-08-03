accessing
getMailIn: aFolder from: aSender

	^ ICEmail new
		body: 'body';
		subject: 'urgent';
		from: aSender;
		to: 'me@me.com';
		folder: aFolder;
		date: 'Fri, 10 Jun 2016 12:52:11 +0200';
		yourself