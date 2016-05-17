responses
commandSucceeded

	^ ICStringFormatter concatenate: {self protocolCommandStart . 'OK'} with: self protocolBlank