as yet unclassified
accountsComplete

	"all accounts are have received there password"
	
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: (self initializedAccounts)).
	ToolBuilder default open: self