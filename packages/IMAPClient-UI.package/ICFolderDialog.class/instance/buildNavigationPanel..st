toolbuilder
buildNavigationPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0 @ 0 extent: 0.2 @ 1);
		children: {
			self buildAddAccountButton: builder.
			self buildEmailButton: builder.
			self buildOpenAddressBookButton: builder.
			self buildUserList: builder.
			self buildFolderTree: builder}