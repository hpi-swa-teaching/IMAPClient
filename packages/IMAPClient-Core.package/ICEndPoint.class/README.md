An ICEndPoint is main class for our framework, handling server communication.

Instance Variables
	authenticationInfo:		Contains the ICAuthenticationInfo, i.e. the username and password of the current connection.
	lastResponse:		Contains the complete (possibly multi-line) answer for the last sent command.
	loggedIn:		Returns a boolean value indicating if the user is currently logged in.
	rootFolder:		A virtual ICFolder containing all parsed folders from the server as children.
	serverInfo:		Contains an ICServerInfo, i.e. the host name and the port of the current connection.
	ssl:			A boolean value indicating whether SSL is currently enabled.
	stream:		Contains an ICStreamWrapper, resembling the connection to the server.