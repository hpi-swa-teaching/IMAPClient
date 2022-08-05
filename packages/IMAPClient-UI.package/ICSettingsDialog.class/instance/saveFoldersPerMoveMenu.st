toolbuilder
saveFoldersPerMoveMenu

	| parsedNumber |
	[
		parsedNumber := Integer readFrom: self foldersPerMoveMenu asString.
		parsedNumber < 1 ifTrue: [NumberParserError signal]]
		on: NumberParserError
		do: [
			self buildInfoWindowContaining: #invalidInputText.
			^ self].
	
	self foldersPerMoveMenu: parsedNumber asString.
	self selectedEndPointSettings foldersPerMoveMenu: parsedNumber asString.
	self changed: #foldersPerMoveMenu