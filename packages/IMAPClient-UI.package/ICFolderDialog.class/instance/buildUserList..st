toolbuilder
buildUserList: builder

	^ builder pluggableTreeSpec new
		model: self;
		roots: #emailAccounts;
		label: #labelForAccount:;
		menu: #userListMenu:;
		autoDeselect: false;
		getSelected: #selectedEndpoint;
		setSelected: #selectedEndpoint:;
		frame: (0 @ 0.05 corner: 1 @ 0.15);
		columns: self userListColumns