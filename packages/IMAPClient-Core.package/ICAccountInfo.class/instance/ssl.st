accessing
ssl

	^ ssl ifNil: [ssl := self class defaultSsl]