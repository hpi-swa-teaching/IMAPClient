accessing
accountInfo

	^ accountInfo ifNil: [accountInfo := ICAccountInfo new]