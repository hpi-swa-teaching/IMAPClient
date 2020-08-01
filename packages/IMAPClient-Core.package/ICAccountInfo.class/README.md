An ICAccountInfo is a dataobject holding information needed to connect to a server such as server address and user credentials. It also ensures basic IMAP datatype validity.

Instance Variables

	accountName: Name of the account set by the user.
	host: Hostname of the IMAP server.
	port: Port of the IMAP service on the server. Default: 993.
	username: Username to login at the IMAP server.
	password: Password of the user to login at the server. Will be deleted after login.
	
	