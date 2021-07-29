setup
mailIn: aFolder

	^ ICEmail new
		body: self class mailBody;
		subject: 'urgent';
		from: 'coolkid@aol.com';
		to: 'me@me.com';
		folder: aFolder;
		date: self class date