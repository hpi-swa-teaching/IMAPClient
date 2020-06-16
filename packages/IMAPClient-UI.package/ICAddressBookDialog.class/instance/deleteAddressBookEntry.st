action
deleteAddressBookEntry

	self addressBook remove: self selectedAddressBookEntry.
	
	self selectedAddressBookEntry: nil.
	self 
		changed: #addressBook.