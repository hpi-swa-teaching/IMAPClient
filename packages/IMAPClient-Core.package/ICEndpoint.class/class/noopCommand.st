commands
noopCommand

	^ ICStringFormatter concatinate: (self protocolCommandStart, 'NOOP') with: self protocolBlank