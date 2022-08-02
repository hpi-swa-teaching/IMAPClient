accessing
isAlreadyUpdating

	^ isAlreadyUpdating ifNil: [self isAlreadyUpdating: false]