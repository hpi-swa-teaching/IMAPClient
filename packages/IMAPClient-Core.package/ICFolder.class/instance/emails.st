accessing
emails

	^ emails ifNil: [emails := (SortedCollection sortBlock: [:first :second | first dateInSecondsSinceSqueakEpoch >= second dateInSecondsSinceSqueakEpoch])]