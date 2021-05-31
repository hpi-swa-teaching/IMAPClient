adding entries
testAddEntryDuplicated

	self addressBook addEmail: self emailContact.
	self addressBook addEmail: self emailContact.
	
	self assert: self addressBook size equals: 1