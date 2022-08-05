An ICStreamWrapper capsules low-level stream interactions.

Instance Variables
	host:				Contains the host name.
	lastResponse:	Contains the (possibly multi-line) response to our last sent command.
	port:				Contains the port.
	ssl:				A boolean flag indicating whether SSL is enabled.
	stream:			Contains the SocketStream (if SSL is disabled) or SecureSocketStream (if SSL is enabled) of our connection.