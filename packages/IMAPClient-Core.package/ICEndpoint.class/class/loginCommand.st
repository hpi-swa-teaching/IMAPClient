commands
loginCommand

	^ ICStringFormatter concatenate: {self protocolCommandStart . 'LOGIN'} with: self protocolBlank