as yet unclassified
testForArgumentCount
	
	self assert: ['\".*\"' asRegex matches: self authInfo usernameAsIMAPString].
	self assert: ['\".*\"' asRegex matches: self authInfo passwordAsIMAPString].