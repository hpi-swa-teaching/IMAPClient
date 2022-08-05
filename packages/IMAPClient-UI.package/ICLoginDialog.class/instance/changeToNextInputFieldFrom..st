keyboard handling
changeToNextInputFieldFrom: currentIndex

	| nextSubmorph text |
	self inputCollection size > currentIndex ifTrue: [
		nextSubmorph := self inputCollection detect: [:each | each getTextSelector = (self textFieldNames at: currentIndex + 1)].
		text := self perform: nextSubmorph getTextSelector.
		text ifNotNil: [text ifNotEmpty: [nextSubmorph textMorph editor selectInterval: (1 to: text size)]].
		nextSubmorph grabKeyboard]