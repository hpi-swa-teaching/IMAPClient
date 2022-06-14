testing
testSearchForContactsInEmails
	
	| addressBook contactWindow|
	addressBook := self navigateFromFolderDialogToAddressBook: self subject.
	contactWindow := self navigateFromAddressBookToAddContact: addressBook.
	self halt.
