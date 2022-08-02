accessing
addressBook

	^ addressBook ifNil: [addressBook := ICAddressBook new].