as yet unclassified
testAddEntry

	self addressBook add: self emailAddress.
	
	self assert: self addressBook size equals: 1
	