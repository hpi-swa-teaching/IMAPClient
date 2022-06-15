testing
testIconScaling

	| formOrigin formOld formNew |
	
	formOrigin := Form dotOfSize: 100.
	Preferences decreaseFontSize.

	formOld := self folderDialog scaleIconFitting: formOrigin.

	Preferences increaseFontSize.
	Preferences increaseFontSize.
	formNew := self folderDialog scaleIconFitting: formOrigin.

	Preferences decreaseFontSize.
	self assert: (formNew width > formOld width)