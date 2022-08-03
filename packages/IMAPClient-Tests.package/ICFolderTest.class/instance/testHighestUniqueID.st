uniqueIDs
testHighestUniqueID

	self helper createNumberOfEmails: 2 in: self root.
	self assert: self root highestUniqueID equals: '2'