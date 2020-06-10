as yet unclassified
testAddEntryDuplicated

	self addressBook add: self emailAddress.
	self addressBook add: self emailAddress deepCopy.
	
	self assert: self addressBook size equals: 1
	