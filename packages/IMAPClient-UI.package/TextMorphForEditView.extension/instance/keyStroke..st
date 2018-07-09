*IMAPClient-UI
keyStroke: evt
	| view |
	editView deleteBalloon.
	self editor model: editView model.  "For evaluateSelection"
	view := editView.  "Copy into temp for case of a self-mutating doit"
	(acceptOnCR and: [evt keyCharacter = Character cr])
		ifTrue: [^ self editor accept].
	super keyStroke: evt.
	view scrollSelectionIntoView.
	
	"Make a cheap check and guess editing. (Alternative would be to copy the old contents and then compare them against the new ones. Maybe add a better hook in the TextEditor."
	(self readOnly not and: [evt keyCharacter isAlphaNumeric or: [evt keyCharacter isSeparator] or: [{Character backspace . Character delete} includes: evt keyCharacter]])
		ifTrue: [view textEdited: self contents]