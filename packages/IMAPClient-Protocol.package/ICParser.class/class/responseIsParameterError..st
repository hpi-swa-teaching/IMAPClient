parsing
responseIsParameterError: aResponseString

	^ self protocolParameterError = 
		((aResponseString subStrings: ICCommand protocolBlank) 
			at: self parameterErrorPosition)