accessing
stream

	^ stream ifNil: [stream := ICStreamWrapper new]