as yet unclassified
testChangeEntryToBeDuplicated

	| newEmailAddress initialSize |
	newEmailAddress := 'maytheforce@bewith.you'.
	
	self addressBook addEmail: self emailAddress.
	self addressBook addEmail: newEmailAddress.
	initialSize := self addressBook size.
	
	self addressBook change: newEmailAddress with: self emailAddress.
	self assert: self addressBook size equals: initialSize - 1.
	