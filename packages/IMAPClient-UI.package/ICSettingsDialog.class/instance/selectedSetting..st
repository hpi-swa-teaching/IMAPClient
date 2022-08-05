accessing
selectedSetting: aSymbol

	aSymbol = self selectedEndPoint ifFalse: [
		selectedSetting := aSymbol.
		self switchToNewSetting].
	
	self changed: #selectedSetting