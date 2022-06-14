testing
testSearchForContactsInEmails
	
	| addressBook contactWindow nameInput emailInput|
	addressBook := self navigateFromFolderDialogToAddressBook: self subject.
	contactWindow := self navigateFromAddressBookToAddContact: addressBook.
	nameInput := contactWindow findByName: ICContactDialog nameNameInputField.
	emailInput := contactWindow findByName: ICContactDialog nameEmailInputField.
	nameInput sendKeys: 'TestName'.
	emailInput sendKeys: 'TestName@de.de'.
	(contactWindow findByName: ICContactDialog nameAcceptButton) click.	
	
	