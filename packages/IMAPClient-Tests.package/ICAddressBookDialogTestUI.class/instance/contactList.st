accessing
contactList

	^ {
		(ICContact newWith: 'erika.musterfrau@rocks.de' with: 'Erika Musterfrau') asString.
		(ICContact newWith: 'max.mustermann@rocks.de' with: 'Max Mustermann') asString.
		(ICContact newWith: 'info@musterfirma.de' with: 'Musterfirmaaa GmbH') asString} asOrderedCollection