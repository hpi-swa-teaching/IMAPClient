toolbuilder
buildAddressBookEntryList: builder
	
	^ builder pluggableTreeSpec new
			model: self;
			label: #labelForAddressBookEntry:;
			roots: #addressBook;
			hScrollBarPolicy: #always;
			vScrollBarPolicy: #always;
			setSelected: #selectedAddressBookEntry:;
			getSelected: #selectedAddressBookEntry;
			menu: #addressBookEntriesMenu:;
			frame: (0 @ self buttonOffset extent:   1 @ (1 - self buttonOffset));
			color: (Color white);
			columns: {
				[:listMorph | (listMorph filteredItems collect: [:item | 
					item preferredWidthOfColumn: 1]) max].}