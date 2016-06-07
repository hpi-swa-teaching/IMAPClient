error handling
responseIsError

	^ self stream lastResponse beginsWith: self class protocolError