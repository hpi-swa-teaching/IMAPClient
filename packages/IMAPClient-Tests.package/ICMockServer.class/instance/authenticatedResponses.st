initialization
authenticatedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGOUT' -> self logoutResponse.
		'. SELECT "inbox"' -> self selectResponse.
		'. LIST "" "*"' -> self listFoldersResponse}