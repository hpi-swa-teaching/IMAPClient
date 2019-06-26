toolbuilder
buildLoadOlderEmailsButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.8 @ 0 extent: 0.2 @ 1);
		label: 'Load older Emails';
		action: #loadOlderEmails