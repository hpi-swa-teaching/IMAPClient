accessing
serverPort

	^ serverPort
			ifNil: [ ^ self defaultServerPort ]