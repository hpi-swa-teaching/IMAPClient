helper
getOpenedWindowWithClickOn: aButtonMorph

	|addressBookWindow addressBookWindowCandidates currentWorld morphsInWorld wrappedAddressBookWindow|
	currentWorld := self subject world.
	morphsInWorld := currentWorld submorphs.
	aButtonMorph click.
	addressBookWindowCandidates := currentWorld submorphs difference: morphsInWorld.
	self assert: 1 equals: addressBookWindowCandidates size.
	addressBookWindow := addressBookWindowCandidates first.
	wrappedAddressBookWindow := self wrapMTFMorphAround: addressBookWindow.
	self openedWindows add: wrappedAddressBookWindow.
	^ wrappedAddressBookWindow
	