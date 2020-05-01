parsing
parseFetchMailStream: aStream

	| emails |

	emails := Dictionary new.
	[aStream atEnd] whileFalse: [self continueMailStream: aStream into: emails].

	 ^ emails