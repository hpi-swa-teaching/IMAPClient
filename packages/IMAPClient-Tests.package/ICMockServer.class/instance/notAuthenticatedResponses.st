login
notAuthenticatedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGIN "', self validUsername, '" "', self validPassword, '"' -> self loginResponse.
		'. LOGOUT' -> self logoutResponse}