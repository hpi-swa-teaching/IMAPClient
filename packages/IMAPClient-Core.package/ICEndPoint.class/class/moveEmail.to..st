commands
moveEmail: messageId to: aFolder

	^ {self protocolCommandStart . 'MOVE' . messageId . aFolder} joinSeparatedBy: self protocolBlank

