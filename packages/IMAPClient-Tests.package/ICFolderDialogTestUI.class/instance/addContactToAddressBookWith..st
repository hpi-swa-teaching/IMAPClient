testing
addContactToAddressBookWith: aString

	| addressBook contactWindow nameInput emailInput |
	addressBook := self navigateFromFolderDialogToAddressBook: self subject.
	contactWindow := self navigateFromAddressBookToAddContact: addressBook.
	nameInput := contactWindow findByName: ICContactDialog nameNameInputField.
	emailInput := contactWindow findByName: ICContactDialog nameEmailInputField.
	nameInput sendKeys: self contactName.
	emailInput sendKeys: aString.
	(contactWindow findByName: ICContactDialog nameAcceptButton) click.
	super abandonOpenedWindows