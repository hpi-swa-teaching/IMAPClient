navigating
navigateFrom: aMorph toNamedMorph: aName

	| button |
	button := aMorph findByName: aName.
	^ self getOpenedWindowWithClickOn: button