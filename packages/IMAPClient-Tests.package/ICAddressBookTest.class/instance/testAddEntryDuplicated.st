adding entries
testAddEntryDuplicated

	self addressBook addEmail: self emailAddress.
	self addressBook addEmail: self emailAddress deepCopy.
	
	self assert: self addressBook size equals: 1
	