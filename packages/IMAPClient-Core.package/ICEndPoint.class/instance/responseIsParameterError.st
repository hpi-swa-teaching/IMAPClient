error handling
responseIsParameterError

	^ self class protocolParameterError = 
		((self stream lastResponse subStrings: ICCommand protocolBlank) 
			at: self class parameterErrorPosition)