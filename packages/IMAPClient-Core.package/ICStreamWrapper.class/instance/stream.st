accessing
stream

	^ stream ifNil: [stream := ICNullStream new]