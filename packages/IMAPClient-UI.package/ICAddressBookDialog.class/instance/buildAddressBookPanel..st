toolbuilder
buildAddressBookPanel: builder

	^ builder pluggablePanelSpec new
		wantsResizeHandles: true;
		model: self;
		frame: (0.0 @ 0.0 extent: 1 @ self buttonOffset);
		children: {
			self
				buildButtonWithFrame: (0 @ 0 extent: 0.2 @ 1)
				andName: self class nameAddContactButton
				andLabel: self class addContactIcon
				andAction: #addContact
				andBuilder: builder.
			self
				buildButtonWithFrame: (0.2 @ 0 extent: 0.4 @ 1)
				andLabel: #sortByNameButtonLabel
				andAction: #sortByName
				andBuilder: builder.
			self
				buildButtonWithFrame: (0.6 @ 0 extent: 0.4 @ 1)
				andLabel: #sortByMailButtonLabel
				andAction: #sortByMail
				andBuilder: builder}