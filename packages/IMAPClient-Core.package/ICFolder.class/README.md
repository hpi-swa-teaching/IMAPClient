An ICFolder is an object resembling an IMAP folder on a remote server.

Instance Variables
	childFolders:	All child folders of this folder. This is automatically filled in by the ICEndPoint.
	emails:			This contains all ICEmails of this folder after calling ICFolder>>fetchHeaders.
	endpoint:		Back reference to the ICEndPoint who created this ICFolder.
	name:			The name of the folder.
	parent:			The parent ICFolder. This is automatically filled in by the ICEndPoint.	