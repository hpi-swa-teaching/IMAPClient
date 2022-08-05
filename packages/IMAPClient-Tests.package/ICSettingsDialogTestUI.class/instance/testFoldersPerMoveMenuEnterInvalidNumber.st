testing
testFoldersPerMoveMenuEnterInvalidNumber

	| defaultNumber |
	defaultNumber := ICAccountSettings defaultFoldersPerMoveMenu.
	
	self setUpEnterFoldersPerMoveMenuNumbers.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: defaultNumber.
	
	self invalidNumbersForFoldersPerMoveMenu do: [:testNumber | | warningWindow |
		self inputField sendKeys: testNumber asString.
		warningWindow := self getOpenedWindowWithClickOn: self saveButton.
		self
			assert: warningWindow morphs first message string
			equals: ICSettingsDialog invalidNumberWarningText.
		self
			assert: self settingsDialog model selectedEndPointSettings foldersPerMoveMenu
			equals: defaultNumber asString]