toolbuilder
saveFoldersPerMoveMenu

	| parsedNumber |
	[
		parsedNumber := Integer readFrom: self foldersPerMoveMenu asString.
		parsedNumber < 1 ifTrue: [NumberParserError signal]]
		on: NumberParserError
		do: [
			UIManager inform: 'please enter a positive Integer'.
			^ self].
	
	self foldersPerMoveMenu: parsedNumber asString.
	self selectedEndpointSettings foldersPerMoveMenu: parsedNumber.
	self changed: #foldersPerMoveMenu