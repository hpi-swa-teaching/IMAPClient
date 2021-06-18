toolbuilder
buildAddAccountButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.66 @ 0 corner: 1 @ 0.05);
		label: self class addAccountIcon;
		action: #createAccount