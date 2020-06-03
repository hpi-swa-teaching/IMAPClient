as yet unclassified
testDeleteEntry

	self addressBook add: self addressBookEntry.
	
	self addressBook delete: self addressBookEntry.
	
	self assert: self addressBook isEmpty