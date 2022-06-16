testing
testForArgumentCount

	self assert: ['\".*\"' asRegex matches: self accountInfo usernameAsIMAPString].
	self assert: ['\".*\"' asRegex matches: self accountInfo passwordAsIMAPString]