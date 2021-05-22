toolbuilder
buildAddressBookPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.0 @ 0.0 extent: 1 @ self buttonOffset);
		children: {
			self buildButton: (0 @ 0 extent: 1 @ 1) with: 'Add Contact' with: #addContact with: builder.}