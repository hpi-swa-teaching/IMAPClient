as yet unclassified
testChangeEntryToBeDuplicated

	| newAddressBookEntry newEmailAddress initialSize |
	newEmailAddress := 'maytheforce@bewith.you'.
	newAddressBookEntry := ICAddressBookEntry newWith: newEmailAddress.
	
	self addressBook add: self addressBookEntry.
	self addressBook add: newAddressBookEntry.
	initialSize := self addressBook size.
	
	self addressBook change: newAddressBookEntry with: self addressBookEntry email.
	self assert: self addressBook size equals: initialSize - 1.
	