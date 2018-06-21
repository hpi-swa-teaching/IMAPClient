accountManagment
editAccount: newData with: anEndPoint
	
	"callback method for dialog. newData contains the updated Data, while previousData
	contains the old data"
	
	| data |
		
	data := OrderedCollection new.
	data add: newData.
	
	ICHelper deleteAccountFromEndpoint: anEndPoint.
	self emailAccounts remove: anEndPoint.
	
	ICHelper saveCredentialsIntoFile: newData.
	
	self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts
	
	