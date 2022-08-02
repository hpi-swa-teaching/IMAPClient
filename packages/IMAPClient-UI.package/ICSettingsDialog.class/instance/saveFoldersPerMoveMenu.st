toolbuilder
saveFoldersPerMoveMenu

	| parsedNumber |
	[
		parsedNumber := Integer readFrom: self foldersPerMoveMenu asString.
		parsedNumber < 1 ifTrue: [NumberParserError signal]]
		on: NumberParserError
		do: [
			"UIManager inform: self class invalidNumberWarningText."
			self buildInfoWindowContaining: #invalidInputText.
			^ self].
	
	self foldersPerMoveMenu: parsedNumber asString.
	self selectedEndpointSettings foldersPerMoveMenu: parsedNumber asString.
	self changed: #foldersPerMoveMenu