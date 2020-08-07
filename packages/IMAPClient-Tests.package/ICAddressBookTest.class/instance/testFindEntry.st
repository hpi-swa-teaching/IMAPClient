as yet unclassified
testFindEntry

	self addressBook addEmail: self emailAddress.
	
	self assert: (self addressBook find: self emailAddress) equals: self emailAddress
	