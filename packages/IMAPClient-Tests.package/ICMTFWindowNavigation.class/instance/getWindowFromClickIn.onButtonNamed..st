navigating
getWindowFromClickIn: aMorph onButtonNamed: aString

	| button |
	button := aMorph findByName: aString.
	^ self getOpenedWindowWithClickOn: button