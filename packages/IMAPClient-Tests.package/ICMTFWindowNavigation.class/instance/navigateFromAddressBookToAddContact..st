navigation
navigateFromAddressBookToAddContact: aMorph

	|button|
	button = aMorph findByName: (ICAddressBookDialog nameAddContactButton).
	^ self getOpenedWindow: button