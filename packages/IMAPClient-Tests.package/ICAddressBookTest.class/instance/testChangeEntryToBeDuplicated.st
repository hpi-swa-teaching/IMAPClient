as yet unclassified
testChangeEntryToBeDuplicated

	| newEmailAddress initialSize |
	newEmailAddress := 'maytheforce@bewith.you'.
	
	self addressBook add: self emailAddress.
	self addressBook add: newEmailAddress.
	initialSize := self addressBook size.
	
	self addressBook change: newEmailAddress with: self emailAddress.
	self assert: self addressBook size equals: initialSize - 1.
	