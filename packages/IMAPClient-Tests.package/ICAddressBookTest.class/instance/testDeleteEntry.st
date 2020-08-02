delete entries
testDeleteEntry

	self addressBook addEmail: self emailAddress.
	
	self addressBook remove: self emailAddress.
	
	self assert: self addressBook isEmpty