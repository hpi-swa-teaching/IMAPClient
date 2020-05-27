action
createAddressBookEntry
	
	| newAddressBookEntry |
	self newEmailAddress ifNil: [
		self inform: 'Please provide an email address.'.
		^ self].
	
	newAddressBookEntry := ICAddressBookEntry new.
	newAddressBookEntry email: (self sanitizeInput: self newEmailAddress).
	self addressBook add: newAddressBookEntry.
	
	self updateUiAfterAddingNewEntry