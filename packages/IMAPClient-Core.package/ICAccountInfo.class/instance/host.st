accessing
host

	^ host ifNil: [host := self class defaultHost]