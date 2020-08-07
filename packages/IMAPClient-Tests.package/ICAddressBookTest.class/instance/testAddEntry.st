as yet unclassified
testAddEntry

	self addressBook addEmail: self emailAddress.
	
	self assert: self addressBook size equals: 1
	