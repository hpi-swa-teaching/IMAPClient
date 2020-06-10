as yet unclassified
testDeleteEntry

	self addressBook addEmail: self emailAddress.
	
	self addressBook remove: self emailAddress.
	
	self assert: self addressBook isEmpty