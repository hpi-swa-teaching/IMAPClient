initialization
authenticatedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> (OrderedCollection newFrom: #('. OK [NOOP COMPLETED]')).
		'. LOGOUT' -> (OrderedCollection newFrom: #('. OK' . '. OK'))}