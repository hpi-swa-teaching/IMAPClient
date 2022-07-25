toolbuilder
buildUserList: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #emailAccounts;
		label: #labelForAccount:;
		autoDeselect: false;
		getSelected: #selectedEndpoint;
		setSelected: #selectedEndpoint:;
		frame: (0 @ 0 corner: 1 @ 0.15)