navigation
navigateFromFolderDialogToAddressBook: aMorph

	| button 	|
	button := aMorph findByName: ICFolderDialog nameAddressBookButton.
	^ self getOpenedWindow: button