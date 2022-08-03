An ICEndPoint is handling access to server communication and file system storage.

Instance Variables
	stream:					Contains an ICStreamWrapper, resembling the connection to the server.
	accountInfo:			Contains the ICAccountInfo, i.e. the username and password of the current connection.
	loggedIn:				Returns a boolean value indicating if the user is currently logged in.
	rootFolder:				A virtual ICFolder containing all parsed folders from the server as children.
	lastResponse:			Contains the complete (possibly multi-line) answer for the last sent command.
	uids: 						Collection of unique ids of messages.
	hierarchyDelimiter:	Symbol indicating the delimiter for hierachies.
	currentFolderName: 	Folder name string of the currently requesting folder.
	fatalErrorOccured: 	Boolean indicator whether an error occured or not after a request.
	folderNameOfTrash: Folder name string of the trash folder on the server.
	readWriter: 			Responsible for disk I/O. Instance of ICFileReadWriter.