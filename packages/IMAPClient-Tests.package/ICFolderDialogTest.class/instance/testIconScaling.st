as yet unclassified
testIconScaling

	| formOrigin formOld formNew |
	
	formOrigin := Form dotOfSize: 100.
	Preferences changeFontSize: -3.

	formOld := self folderDialog scaleIconFitting: formOrigin.

	Preferences changeFontSize: 6.
	formNew := self folderDialog scaleIconFitting: formOrigin.

	Preferences changeFontSize: -3.
	self assert: (formNew width > formOld width)