navigation
getOpenedWindow: aButton

	|addressBookWindow addressBookWindowCandidates currentWorld morphsInWorld 	wrappedAddressBookWindow|
	currentWorld := self subject world.
	morphsInWorld := currentWorld submorphs.
	aButton click.
	addressBookWindowCandidates := currentWorld submorphs difference: morphsInWorld.
	self assert: 1 equals: addressBookWindowCandidates size.
	addressBookWindow := addressBookWindowCandidates first.
	wrappedAddressBookWindow := MTFMorphWrapper newWith: {addressBookWindow}.
	self openedWindows add: wrappedAddressBookWindow.
	^ wrappedAddressBookWindow
	