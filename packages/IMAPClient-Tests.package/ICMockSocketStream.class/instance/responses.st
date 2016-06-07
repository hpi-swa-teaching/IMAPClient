accessing
responses

	^ Dictionary newFrom: {
		'. NOOP' -> (OrderedCollection newFrom: #('OK [NOOP COMPLETED]')).
		'. LOGIN ', self validUsername, ' ', self validPassword -> (OrderedCollection newFrom: #('OK logged in')).
		'. LOGOUT' -> (OrderedCollection newFrom: #('OK' . 'OK'))}