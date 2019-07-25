commands
fetchBody: aMessageId

	^ self join: {'FETCH' . aMessageId . 'body[TEXT]'}