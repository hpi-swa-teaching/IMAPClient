commands
moveEmail: aMessageId to: aFolder

	^ self join: {'MOVE'. aMessageId. self putInQuotes: aFolder}