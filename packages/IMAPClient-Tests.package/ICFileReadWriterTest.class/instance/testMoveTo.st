UIDs
testMoveTo

	| mail testFolder |
	mail:= self createFileWith: self moveToUID.
	testFolder:= ICFolder named: 'testFolder' in: self endpoint rootFolder with: self endpoint of: #Generic.
	self readWriter writeFolder: testFolder.
	self readWriter moveEmail: mail to: testFolder.
	self readWriter readEmailsFromDisk.
	self assert: {mail folder} equals: testFolder