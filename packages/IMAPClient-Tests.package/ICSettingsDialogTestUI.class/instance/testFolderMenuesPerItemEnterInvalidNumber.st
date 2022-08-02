testing
testFolderMenuesPerItemEnterInvalidNumber

	| defaultNumber |
	
	defaultNumber := ICAccountSettings defaultFoldersPerMoveMenu.
	
	self setUpEnterFoldersPerMoveMenuNumbers.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: defaultNumber.
	
	{0. -453453} do: [:testNumber | | warningWindow |
		self inputField sendKeys: testNumber asString.
		warningWindow := self getOpenedWindowWithClickOn: self saveButton.
		self
			assert: warningWindow morphs first message string
			equals: ICSettingsDialog invalidNumberWarningText.
		self
			assert: self settingsDialog model selectedEndpointSettings foldersPerMoveMenu
			equals: defaultNumber asString]