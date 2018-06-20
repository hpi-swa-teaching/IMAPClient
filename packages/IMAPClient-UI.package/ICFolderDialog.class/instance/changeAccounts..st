accessing
changeAccounts: anAccount

	"search endpoint with same name"
	
	| foundEndpointIndex foundEndpoint |
	
	anAccount ifNil: [^ self].
	
	foundEndpointIndex := self emailAccounts findFirst: [:endpoint | endpoint name = anAccount string].
	
	foundEndpoint := self emailAccounts at: foundEndpointIndex.
	self getFolderWith: foundEndpoint.
	
	self rootFolder: (Array with: foundEndpoint rootFolder).
	self selectedFolder: nil.
	
	self 
		changed: #selectedFolder;
		changed: #rootFolder;
		changed: #childFolders;
		changed: #selectedFolder;
		changed: #emailsOfSelectedFolder