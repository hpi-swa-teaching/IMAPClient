responses
protocolError

	^ ICStringFormatter concatenate: {self protocolCommandStart . 'BAD'} with: self protocolBlank