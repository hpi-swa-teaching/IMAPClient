accessing
accountName

	^ accountName ifNil: [accountName := self class defaultName]