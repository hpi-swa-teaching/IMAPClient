as yet unclassified
deleteAccount: account
	|endpoint|
	
	endpoint := self getEndpointByName: account.
	ICHelper deleteAccountFromEndpoint: endpoint.
	self emailAccounts remove: endpoint.
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.


	self changed: #emailAccounts.
	self changed: #getNameOfEmailAccounts
	