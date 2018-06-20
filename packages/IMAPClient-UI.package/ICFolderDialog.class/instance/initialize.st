as yet unclassified
initialize 
	
	| accounts |
	accounts := ICHelper loadCredentialsIntoDictionaries.
	"ToDo: What to do when no account has been added yet".
	self askForPasswordsWith: accounts.	
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: (ICHelper accountsDictionary))