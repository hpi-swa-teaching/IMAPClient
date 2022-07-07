UIDs
testMoveTo

	| mail testFolder |
	mail:= self createFileWith: self moveToUID.
	self assert: mail folder equals: self endpoint rootFolder.
	self assert: (self endpoint rootFolder emails contains: [:e| e = mail]).
	testFolder:= ICFolder named: 'testFolder' in: self endpoint rootFolder with: self endpoint of: #Generic.
	self readWriter writeFolder: testFolder.
	self readWriter moveEmail: mail to: testFolder.
	
	self assert: mail folder equals: testFolder.
	self assert: (testFolder emails contains: mail)