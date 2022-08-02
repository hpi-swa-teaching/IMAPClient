helper
getOpenedWindowWithClickOn: aButtonMorph

	| openedWindow openedWindowCandidates currentWorld morphsInWorld wrappedOpenedWindow |
	currentWorld := self subject world.
	morphsInWorld := currentWorld submorphs.
	aButtonMorph click.
	openedWindowCandidates := currentWorld submorphs difference: morphsInWorld.
	self assert: 1 equals: openedWindowCandidates size.
	openedWindow := openedWindowCandidates first.
	wrappedOpenedWindow := self wrapMTFMorphAround: openedWindow.
	self openedWindows add: wrappedOpenedWindow.
	^ wrappedOpenedWindow