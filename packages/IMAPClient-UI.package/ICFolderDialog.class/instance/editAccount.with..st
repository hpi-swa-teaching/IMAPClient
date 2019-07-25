accountManagment
editAccount: anAccountInfo with: anEndPoint
	
	"callback method for dialog. newData contains the updated Data, while previousData
	contains the old data"
	
	| data |
		
	data := OrderedCollection new.
	data add: anAccountInfo asDictionary.
	
	ICEndPoint removeConfiguration: anEndPoint.
	self emailAccounts remove: anEndPoint.
	
	ICEndPoint addConfiguration: anAccountInfo asDictionary.
	
	self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).	
	self selectedFolder: nil.
	self rootFolder: nil.
	
	self changed: #selectedFolder.	
	self changed: #rootFolder.
	self changed: #childFolders.
	self changed: #emailsOfSelectedFolder.
	self changed: #emailAccounts