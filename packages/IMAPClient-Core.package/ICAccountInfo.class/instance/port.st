accessing
port

	^ port ifNil: [port := self class defaultPort]