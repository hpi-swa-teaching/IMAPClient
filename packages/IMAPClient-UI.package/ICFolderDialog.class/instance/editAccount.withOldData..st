accountManagment
editAccount: newData withOldData: previousData
	
	"callback method for dialog"
	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.


	self changed: #emailAccounts