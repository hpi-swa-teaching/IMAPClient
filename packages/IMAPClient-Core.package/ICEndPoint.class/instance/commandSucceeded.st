protocol parse
commandSucceeded

	^ self stream lastResponse beginsWith: self class commandSucceeded