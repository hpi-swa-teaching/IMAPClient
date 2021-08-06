accessing
storedCommands

	^ storedCommands ifNil: [storedCommands := ICCommandStorage new]