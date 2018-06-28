accessing
stateTransitions

	^ Dictionary newFrom: {
		'. LOGIN ', self validUsername, ' ', self validPassword -> self authenticatedResponses.
		'. SELECT "inbox"' -> self selectedResponses}