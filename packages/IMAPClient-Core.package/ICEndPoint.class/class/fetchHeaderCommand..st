commands
fetchHeaderCommand: messageId

	^ 		{self protocolCommandStart. 
			'FETCH'. 
			messageId.
			'(body[HEADER.FIELDS (from to subject date)])'} 
		joinSeparatedBy: self protocolBlank