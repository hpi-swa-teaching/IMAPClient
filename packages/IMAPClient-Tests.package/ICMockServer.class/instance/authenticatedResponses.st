login
authenticatedResponses

	^ Dictionary newFrom: {
		'. NOOP' -> self noopResponse.
		'. LOGOUT' -> self logoutResponse.
		'. SELECT "inbox"' -> self selectResponse.
		'. SELECT "folder1"' -> self selectResponse.
		'. LIST "" "*"' -> self listFoldersResponse}