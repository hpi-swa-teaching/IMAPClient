as yet unclassified
firstExpectedMailObject

	^ ICEmail new
			date: 'Tue, 1 Aug 2017 14:08:29 +0200';
			from: 'test@example.de';
			to: (OrderedCollection newFrom: { 'student@hpi.de' });
			subject: 'test mail';
			uniqueID: (self firstUID);
			yourself