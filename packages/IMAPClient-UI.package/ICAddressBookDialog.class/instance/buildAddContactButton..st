toolbuilder
buildAddContactButton: builder

	^ self
		buildButtonWithFrame: (0 @ 0 extent: 0.2 @ 1)
		andName: self class nameAddContactButton
		andLabel: self class addContactIcon
		andAction: #addContact
		andBuilder: builder