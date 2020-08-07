accountManagment
accountsComplete

	self emailAccounts: (self initializedAccounts collect: [:configData | 
		ICEndPoint new connectAndLoginWith: (ICAccountInfo newWith: configData)]).
	
	"let all Endpoints preload their file structure and configure them to prevent timeouts"
	self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].
	
	self update.
	
	ToolBuilder default open: self