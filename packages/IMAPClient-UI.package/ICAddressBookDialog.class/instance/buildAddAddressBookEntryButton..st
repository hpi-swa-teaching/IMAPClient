toolbuilder
buildAddAddressBookEntryButton: builder

	^ builder pluggableButtonSpec new
		model: self;
		frame: (0.8 @ 0.8 corner: 0.95 @ 0.95);
		label: 'Add';
		action: #createAddressBookEntry