as yet unclassified
testFindEntry

	self addressBook add: self emailAddress.
	
	self assert: (self addressBook find: self emailAddress) equals: self emailAddress
	