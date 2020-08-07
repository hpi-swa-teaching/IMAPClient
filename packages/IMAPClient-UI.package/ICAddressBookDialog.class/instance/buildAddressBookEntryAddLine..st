toolbuilder
buildAddressBookEntryAddLine: builder
	
	^ builder pluggableInputFieldSpec new
		model: self;
		frame: (0 @ 0.8 extent: 0.8 @ 0.15);
		setText: #updateNewEmailAddress:;
		getText: #newEmailAddress;
		editText: #newEmailAddress:;
		help: #addressBookEntryHelp
