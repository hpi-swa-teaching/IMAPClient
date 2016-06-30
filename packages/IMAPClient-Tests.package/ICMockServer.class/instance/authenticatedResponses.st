initialization
authenticatedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGOUT' -> self logoutResponse.
		'. SELECT inbox' -> self selectInboxResponse}
		
	