action - update emails
executeFileCommands
	| fileCommands |
	fileCommands := ICFileCommandStorage new.
	[fileCommands isEmpty]
		whileFalse: [fileCommands pop value]