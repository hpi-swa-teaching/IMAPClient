accountManagment
accountsComplete

	"all accounts are have received their password"
	
	self emailAccounts: (ICHelper accountDictionariesToEndpoints: (self initializedAccounts)).
	
	"let all Endpoints preload their file structure and configure them to prevent timeouts"
	self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].
	
	ToolBuilder default open: self