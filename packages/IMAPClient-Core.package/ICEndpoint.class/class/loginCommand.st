commands
loginCommand

	^ ICStringFormatter concatinate: {self protocolCommandStart . 'LOGIN'} with: self protocolBlank