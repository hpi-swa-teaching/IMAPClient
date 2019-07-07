toolbuilder
buildAddAccountButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.8 @ 0 corner: 1 @ 0.05);
		label: ICFolderDialog addUserIcon;
		action: #createAccount