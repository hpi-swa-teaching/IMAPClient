action
deleteAddressBookEntry

	self addressBook delete: self selectedAddressBookEntry.
	
	self selectedAddressBookEntry: nil.
	self 
		changed: #addressBookEntries.