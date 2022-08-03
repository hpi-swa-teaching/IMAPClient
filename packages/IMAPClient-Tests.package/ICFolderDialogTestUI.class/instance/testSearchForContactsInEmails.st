testing
testSearchForContactsInEmails

	| searchBar emailAddress1 emailAddress2 |
	emailAddress1 := self emailAddresses first.
	emailAddress2 := self emailAddresses second.
	
	self setUpFolderAndMails.
	self addContactToAddressBookWith: emailAddress1.
	
	self folderDialog selectedFolder: self folder.
	self assert: (self existsMorphWithContent: emailAddress1 in: self subject).
	self assert: (self existsMorphWithContent: emailAddress2 in: self subject).
	
	searchBar := self subject findByName: ICFolderDialog nameEmailSearch.
	searchBar sendKeys: self contactName.
	
	self assert: (self existsMorphWithContent: emailAddress1 in: self subject).
	self deny: (self existsMorphWithContent: emailAddress2 in: self subject)