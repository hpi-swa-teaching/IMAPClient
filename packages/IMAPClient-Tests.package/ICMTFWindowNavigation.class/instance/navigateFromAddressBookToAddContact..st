navigating
navigateFromAddressBookToAddContact: anAddressBookMorph

	^ self
		getWindowFromClickIn: anAddressBookMorph
		onButtonNamed: ICAddressBookDialog nameAddContactButton