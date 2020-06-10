as yet unclassified
testChangeEntry

	| newEmail |
	newEmail := 'maytheforce@bewith.you'.
	
	self addressBook addEmail: self emailAddress.
	
	self addressBook change: self emailAddress with: newEmail.
	
	self assert: (self addressBook includes: newEmail) equals: true
	