accessing
changeAccounts: anAccount

	| endpoint|
	"search endpoint with same name"
	
	anAccount ifNil: [^self].
	endpoint := self getEndpointByName: anAccount.
	
	self getFolderWith: endpoint.
	
	self rootFolder: (Array with: endpoint rootFolder).
	self selectedFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder

	
		
	 	