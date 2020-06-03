toolbuilder
buildOpenAddressBookButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.6 @ 0 corner: 0.8 @ 0.05);
		label: 'Contacts';
		action: #openAddressBook