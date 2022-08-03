testing
testAddressBookMatching

	| addressbook name email fakeName |
	addressbook := ICAddressBook new.
	name := 'Anton'.
	fakeName := 'Bob'.
	email := 'a@b.de'.
	addressbook add: 'Anton a@b.de'.
	self assert: (self folderDialog hasSenderMatchInAddressbook: fakeName with: email) equals: false.
	self assert: (self folderDialog hasSenderMatchInAddressbook: name with: email) equals: true.
	addressbook removeAll