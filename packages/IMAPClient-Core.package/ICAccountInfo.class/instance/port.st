accessing
port

	^ port ifNil: [port := self class invalidPort]