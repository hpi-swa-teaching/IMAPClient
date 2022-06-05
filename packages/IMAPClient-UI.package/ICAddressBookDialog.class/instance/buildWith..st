toolbuilder
buildWith: builder

	| window |
	window:= (builder build: (builder pluggableWindowSpec new
			model: self;
			label: self dialogTitle;
			children: OrderedCollection new;
			extent: 550 @ 400;
			children: {self buildAddressBookEntryList: builder. 
						self buildAddressBookPanel: builder})).
	self addressBookDialogMorph: window.
	
	^ window