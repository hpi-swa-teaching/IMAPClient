as yet unclassified
testIconScaling

	| formOrigin formOld formNew |
	
	formOrigin := Form dotOfSize: 100.
	formOld := self folderDialog scaleIconToDisplay: formOrigin.
	
	Preferences increaseFontSize.
	formNew := self folderDialog scaleIconToDisplay: formOrigin.
	
	Preferences decreaseFontSize.
	self assert: (formNew width > formOld width)