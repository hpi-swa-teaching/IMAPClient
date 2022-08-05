testing
testAddressBookOpens

	| openAddressBookButton addressBookWindow |
	openAddressBookButton := self subject findByName: ICFolderDialog nameAddressBookButton.
	addressBookWindow := self getOpenedWindowWithClickOn: openAddressBookButton.
	self assert: addressBookWindow label equals: ICAddressBookDialog dialogTitle