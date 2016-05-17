commands
noopCommand

	^ ICStringFormatter concatenate: {self protocolCommandStart . 'NOOP'} with: self protocolBlank