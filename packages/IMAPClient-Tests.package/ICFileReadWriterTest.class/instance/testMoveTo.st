UIDs
testMoveTo

	| mail testFolder |
	mail:= self createFileWith: self moveToUID.
	self assert: mail folder equals: self endpoint rootFolder.
	testFolder:= ICFolder named: 'testFolder' in: self endpoint rootFolder with: self endpoint of: #Generic.
	self readWriter writeFolder: testFolder.
	self readWriter moveEmail: mail to: testFolder.
	self readWriter readEmailsFromDisk.
	self assert: mail folder equals: testFolder.
	self assert: (testFolder emails contains: mail)