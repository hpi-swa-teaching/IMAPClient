accountManagment
editAccount: newData with: anEndPoint
	
	"callback method for dialog. newData contains the updated Data, while previousData
	contains the old data"
	
	| accountCollection |
	
	ICHelper deleteAccountFromEndpoint: anEndPoint.
	self emailAccounts remove: anEndPoint.
	
	ICHelper saveCredentialsIntoFile: newData.
	accountCollection := ICHelper loadCredentialsIntoDictionaries.
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: accountCollection).
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts
	
	