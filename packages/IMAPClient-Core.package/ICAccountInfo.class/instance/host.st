accessing
host

	^ host ifNil: [host := self class invalidHost]