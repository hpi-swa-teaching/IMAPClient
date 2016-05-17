commands
logoutCommand

	^ ICStringFormatter concatenate: {self protocolCommandStart . 'LOGOUT'} with: self protocolBlank