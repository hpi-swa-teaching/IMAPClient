deleteFolder
testRemoveEmailsFromFolder

	| subfolder trashFolder numberOfEmails endPoint root |
	
	endPoint := ICEndPoint new.
	
	root := ICFolder new.
	root endpoint: endPoint;
			parent: root;
			folderName: 'rootFolder'.
	
	endPoint rootFolder: root.
	numberOfEmails := 2.
	
	subfolder := ICFolder named: 'subfolder' in: root with: endPoint of: #Generic.
	trashFolder :=  ICFolder named: 'trash' in: root with: endPoint of: #Trash.
	endPoint folderNameOfTrash: 'trash'.
	
	subfolder addMails: (self getNumberOfEmails: numberOfEmails in: subfolder).
	"subfolder emails do: [:email | endPoint readWriter write: email.]."
	 
	subfolder moveEmailsToTrash.
	
	self assert: subfolder emails isEmpty.
	self assert: trashFolder emails size equals: numberOfEmails.

