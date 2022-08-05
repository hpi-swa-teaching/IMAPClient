accessing
selectedSetting: aSymbol

	aSymbol = self selectedEndpoint ifFalse: [
		selectedSetting := aSymbol.
		self switchToNewSetting].
	
	self changed: #selectedSetting