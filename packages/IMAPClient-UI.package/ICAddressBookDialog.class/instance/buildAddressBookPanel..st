toolbuilder
buildAddressBookPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.0 @ 0.0 extent: 1 @ self buttonOffset);
		children: {
			self buildButton: (0 @ 0 extent: 0.2 @ 1) with: self class addContactIcon with: #addContact with: builder.
			self buildButton: (0.2 @ 0 extent: 0.4 @ 1) with: #sortByNameButtonLabel with: #sortByName with: builder.
			self buildButton: (0.6 @ 0 extent: 0.4 @ 1) with: #sortByMailButtonLabel with: #sortByMail with: builder.
			}