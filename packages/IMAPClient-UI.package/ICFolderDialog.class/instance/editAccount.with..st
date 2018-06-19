accountManagment
editAccount: newData with: anEndPoint
	
	"callback method for dialog. newData contains the updated Data, while previousData
	contains the old data"
	
	| accountCollection |
	"ToDo: Figure out a way to update Endpoints"
	
	ICHelper deleteAccountFromEndpoint: anEndPoint.
	self emailAccounts remove: anEndPoint.
	
	ICHelper saveCredentialsIntoFile: newData.
	accountCollection := ICHelper loadCredentialsIntoDictionaries.
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: accountCollection).
	self changed: #emailAccounts
	
	
	
	