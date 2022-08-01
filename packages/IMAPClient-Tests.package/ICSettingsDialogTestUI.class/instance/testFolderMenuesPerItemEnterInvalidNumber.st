testing
testFolderMenuesPerItemEnterInvalidNumber
	
	| defaultNumber testNumber1 testNumber2 warningWindow |
	
	testNumber1 := 0.
	testNumber2 := -453453.
	defaultNumber := ICAccountSettings defaultFoldersPerMoveMenu.
	
	self setUpEnterFoldersPerMoveMenuNumbers.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: defaultNumber.
	
	self inputField sendKeys: testNumber1 asString.
	warningWindow := self getOpenedWindowWithClickOn: self saveButton.
	
	self halt.
	
	self assert: (warningWindow morphs first label contains: ICSettingsDialog invalidNumberWarningText).
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: defaultNumber asString.
	
	


