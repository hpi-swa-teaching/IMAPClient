testing
testSearchForContactsInEmails
	
	| addressBook contactWindow nameInput emailInput emailFolder searchBar emailAddress1 emailAddress2|
	"SetUp"
	emailAddress1:= 'TestName@de.de'.
	emailAddress2:= 'AnotherName@de.de'.
	self testFolder: (ICFolder new folderName: 'testFolder').
	self folderDialog rootFolder addFolder: testFolder.
	self testFolder addMails: {self getMailIn: self testFolder from: emailAddress1 . self getMailIn: self testFolder from: emailAddress2}.
	self folderDialog triggerEmailChanges.
	
	"Add Contact to AddressBook"
	addressBook := self navigateFromFolderDialogToAddressBook: self subject.
	contactWindow := self navigateFromAddressBookToAddContact: addressBook.
	nameInput := contactWindow findByName: ICContactDialog nameNameInputField.
	emailInput := contactWindow findByName: ICContactDialog nameEmailInputField.
	nameInput sendKeys: 'Anton'.
	emailInput sendKeys: emailAddress1.
	(contactWindow findByName: ICContactDialog nameAcceptButton) click.
	super tearDown.
	
	"Search for Contact and Test"
	emailFolder := self findBySubstringInContents: self testFolder folderName in: self subject.
	self folderDialog selectedFolder: self testFolder.
	self assert: (self findBySubstringInContents: emailAddress1 in: self subject) size equals: 1.
	self assert: (self findBySubstringInContents: emailAddress2 in: self subject) size equals: 1.
	
	searchBar := self subject findByName: ICFolderDialog nameEmailSearch.
	searchBar sendKeys: 'Anton'.
	
	self assert: (self findBySubstringInContents: emailAddress1 in: self subject) size equals: 1.
	self assert: (self findBySubstringInContents: emailAddress2 in: self subject) isEmpty.

	