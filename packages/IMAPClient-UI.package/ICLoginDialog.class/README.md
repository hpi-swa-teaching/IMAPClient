An ICLoginDialog is a toolbuilder-based UI for adding new account configuration to the client which then can be authorized by the ICPasswordDialog.

Instance Variables
	accountName: 			Name of the account set by the user.
	serverPort: 				Port of the IMAP service on the server. Default: 993.
	username: 				Username to login at the IMAP server.
	password: 				Password to login with.
	serverAddress: 			Hostname of the IMAP server.#
	ssl:						A boolean flag indicating whether SSL is enabled.
	inputCollection: 		Collection containing input fields.
	loginMorph: 			Morph with the login form.
	folderDialogInstance: 	Parent instance of ICFolderDialog.
	updateMode: 			Indicates wheter we update an existing or create a new account.
	endPoint: 				ICEndPoint instance to talk with.