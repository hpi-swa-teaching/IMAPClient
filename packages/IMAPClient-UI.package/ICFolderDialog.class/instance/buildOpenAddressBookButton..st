toolbuilder
buildOpenAddressBookButton: builder

	^ builder pluggableButtonSpec new
		name: self class nameAddressBookButton;
		model: self;
		frame: (0.25 @ 0 corner: 0.5 @ 0.05);
		label: self class contactsIcon;
		action: #openAddressBook