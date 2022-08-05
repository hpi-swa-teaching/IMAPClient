logout
testRetrieveFlagsDefault

	| folder mailA mailB emailObjects |
	emailObjects := self setUpRetieveFlagsTests.
	mailA := emailObjects first.
	mailB := emailObjects second.
	folder := mailA folder.
	
	self assert: mailA seen equals: false.
	self assert: mailA flagged equals: false.
	self assert: mailA deleted equals: false.
	self assert: mailB seen equals: false.
	self assert: mailB flagged equals: false.
	self assert: mailB deleted equals: false