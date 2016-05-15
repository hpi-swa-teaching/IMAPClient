responses
protocolError

	^ ICStringFormatter concatinate: (self protocolCommandStart, 'BAD') with: self protocolBlank