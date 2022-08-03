testing
testFoldersPerMoveMenuEnterValidNumber
	
	| testNumber |
	
	testNumber := 65462134.
	
	self setUpEnterFoldersPerMoveMenuNumbers.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: ICAccountSettings defaultFoldersPerMoveMenu.
	
	self inputField sendKeys: testNumber asString.
	self saveButton click.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: testNumber asString.
	
	


