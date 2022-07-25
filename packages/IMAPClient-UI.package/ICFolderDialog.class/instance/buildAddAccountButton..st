toolbuilder
buildAddAccountButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.5 @ 0 corner: 0.75 @ 0.05);
		label: self class addAccountIcon;
		action: #createAccount