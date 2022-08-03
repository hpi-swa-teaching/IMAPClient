uniqueIDs
testLowestUniqueID

	self helper createNumberOfEmails: 2 in: self root.
	self assert: self root lowestUniqueID = '1'