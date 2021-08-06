find entries
testFindEntry

	self addressBook addEmail: self emailContact.
	
	self assert: (self addressBook find: self emailContact) equals: self emailContact
