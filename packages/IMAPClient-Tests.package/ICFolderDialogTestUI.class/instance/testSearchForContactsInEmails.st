testing
testSearchForContactsInEmails

	| addressBook contactWindow nameInput emailInput emailFolder searchBar emailAddress1 emailAddress2 |
	"SetUp"
	emailAddress1 := 'TestName@de.de'.
	emailAddress2 := 'AnotherName@de.de'.
	self folder: (ICFolder new folderName: 'testFolder').
	self folderDialog rootFolder addFolder: self folder.
	self folder addMails: {
		self getMailIn: self folder from: emailAddress1.
		self getMailIn: self folder from: emailAddress2}.
	self folderDialog triggerEmailChanges.
	
	"Add Contact to AddressBook"
	addressBook := self navigateFromFolderDialogToAddressBook: self subject.
	contactWindow := self navigateFromAddressBookToAddContact: addressBook.
	nameInput := contactWindow findByName: ICContactDialog nameNameInputField.
	emailInput := contactWindow findByName: ICContactDialog nameEmailInputField.
	nameInput sendKeys: 'Anton'.
	emailInput sendKeys: emailAddress1.
	(contactWindow findByName: ICContactDialog nameAcceptButton) click.
	super abandonOpenedWindows.
	
	"Search for Contact and Test"
	emailFolder := self findBySubstringInContents: self folder folderName in: self subject.
	self folderDialog selectedFolder: self folder.
	self assert: (self existsMorphWithContent: emailAddress1 in: self subject).
	self assert: (self existsMorphWithContent: emailAddress2 in: self subject).
	
	searchBar := self subject findByName: ICFolderDialog nameEmailSearch.
	searchBar sendKeys: 'Anton'.
	
	self assert: (self existsMorphWithContent: emailAddress1 in: self subject).
	self deny: (self existsMorphWithContent: emailAddress2 in: self subject)