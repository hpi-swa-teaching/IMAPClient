accessing
changeAccounts: anAccount

	"search endpoint with same name"
	
	| foundEndpoint |
	
	anAccount ifNil: [^ self].
	foundEndpoint := self getAccount: anAccount string.
	
	self getFolderWith: foundEndpoint.
	self rootFolder: (Array with: foundEndpoint rootFolder).
	self selectedFolder: nil.
	
	self 
		changed: #selectedFolder;
		changed: #rootFolder;
		changed: #childFolders;
		changed: #selectedFolder;
		changed: #emailsOfSelectedFolder