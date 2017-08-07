error handling
responseIsParameterError

	^ self class protocolParameterError = 
		((self stream lastResponse subStrings: self class protocolBlank) 
			at: self class parameterErrorPosition)