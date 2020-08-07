toolbuilder
buildWith: builder

	^ builder build: (builder pluggableWindowSpec new
			model: self;
			label: self dialogTitle;
			children: OrderedCollection new;
			extent: 350 @ 200;
			children: {self buildAddressBookEntryList: builder.})