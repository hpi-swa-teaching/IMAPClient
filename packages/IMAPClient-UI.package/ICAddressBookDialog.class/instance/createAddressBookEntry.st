action
createAddressBookEntry
	
	self newEmailAddress ifNil: [
		self inform: 'Please provide an email address.'.
		^ self].
	
	self addressBook addEmail: (self sanitizeInput: self newEmailAddress).
	
	self triggerNewEntryChanges