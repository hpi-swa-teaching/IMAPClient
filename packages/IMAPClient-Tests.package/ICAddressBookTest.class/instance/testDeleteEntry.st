delete entries
testDeleteEntry

	self addressBook addEmail: self emailContact.
	
	self addressBook remove: self emailContact.
	
	self assert: self addressBook isEmpty