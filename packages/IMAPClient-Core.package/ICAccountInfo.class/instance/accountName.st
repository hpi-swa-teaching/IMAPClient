accessing
accountName

	^ accountName ifNil: [accountName := self class initialAccountName]