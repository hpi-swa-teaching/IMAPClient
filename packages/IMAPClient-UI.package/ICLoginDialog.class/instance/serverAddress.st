accessing
serverAddress

	^ serverAddress 
			ifNil: [ ^ self defaultServerAddress ]