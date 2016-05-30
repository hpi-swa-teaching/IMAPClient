accessing
responses

	^ Dictionary newFrom: {
		'. NOOP' -> (OrderedCollection newFrom: #('OK [NOOP COMPLETED]')).
		'. LOGIN ', ICEndPointTest serverUsername, ' ', ICEndPointTest serverPassword -> (OrderedCollection newFrom: #('OK logged in')).
		'. LOGOUT' -> (OrderedCollection newFrom: #('OK' . 'OK'))}