constants
expectedMailObject

	^ ICEmail new
		body: 'body text';
		subject: 'subject text';
		from: 'sender';
		to: (OrderedCollection newFrom: { 'receiver1' . 'receiver2' });
		date: 'Fri, 10 Jun 2016 12:51:42 +0200';
		seen: 'true';
		flagged: 'true'