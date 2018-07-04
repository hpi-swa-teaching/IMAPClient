accountManagment
accountsComplete

	"all accounts are have received there password"
	
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: (self initializedAccounts)).
	
	"let all Endpoints preload their file structure"
	self emailAccounts do: [:endpoint | self getFolderWith: endpoint].
	ToolBuilder default open: self