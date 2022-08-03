parsing
parseFetchMailResponse: anOrderedCollection

	^ self parseFetchMailStream: (ReadStream on: (anOrderedCollection joinSeparatedBy: Character cr))