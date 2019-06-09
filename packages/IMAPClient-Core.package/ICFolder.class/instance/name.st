accessing
name

	^ name ifNil: [name := self class defaultName]