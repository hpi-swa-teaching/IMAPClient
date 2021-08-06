toolbuilder
buildOpenAddressBookButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.33 @ 0 corner: 0.66 @ 0.05);
		label: self class contactsIcon;
		action: #openAddressBook