accessing
changeAccounts: anAccount

	| foundEndpoint |
	"search endpoint with same name"
	
	anAccount ifNil: [^self].
	
	foundEndpoint := self getAccount: anAccount string.
	self getFolderWith: foundEndpoint.
	
	self rootFolder: (Array with: foundEndpoint rootFolder).
	self selectedFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #selectedFolder.
	self changed: #emailsOfSelectedFolder