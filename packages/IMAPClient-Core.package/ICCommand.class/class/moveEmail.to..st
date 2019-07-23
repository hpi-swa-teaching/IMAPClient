commands
moveEmail: messageId to: aFolder

	^ {ICEndPoint protocolCommandStart . 'MOVE' . messageId . aFolder} joinSeparatedBy: ICEndPoint protocolBlank

