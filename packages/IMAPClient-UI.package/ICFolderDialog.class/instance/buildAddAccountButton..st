toolbuilder
buildAddAccountButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.15 @ 0 extent: 0.05 @ 0.05);
		label: '+';
		action: #addAccountButton