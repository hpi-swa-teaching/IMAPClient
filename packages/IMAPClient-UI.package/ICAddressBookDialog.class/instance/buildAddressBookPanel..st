toolbuilder
buildAddressBookPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.0 @ 0.0 extent: 1 @ self buttonOffset);
		children: {
			self buildAddContactButton: builder.
			self buildAddSortByNameButton: builder.
			self buildAddSortByMailButton: builder}