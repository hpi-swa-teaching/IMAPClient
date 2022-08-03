helper
getOpenedWindowWithClickOn: aButtonMorph

	| openedWindow openedWindowCandidates currentWorld morphsBeforeClick wrappedOpenedWindow |
	currentWorld := self subject world.
	morphsBeforeClick := currentWorld submorphs.
	aButtonMorph click.
	openedWindowCandidates := currentWorld submorphs difference: morphsBeforeClick.
	self assert: 1 equals: openedWindowCandidates size.
	openedWindow := openedWindowCandidates first.
	wrappedOpenedWindow := self wrapMTFMorphAround: openedWindow.
	self openedWindows add: wrappedOpenedWindow.
	^ wrappedOpenedWindow