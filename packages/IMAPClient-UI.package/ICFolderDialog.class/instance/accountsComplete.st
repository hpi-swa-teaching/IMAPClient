accountManagment
accountsComplete

	self emailAccounts: (self initializedAccounts collect: [:anAccountInfo | 
		ICEndPoint new connectAndLoginWith: anAccountInfo]).
	
	"let all Endpoints preload their file structure and configure them to prevent timeouts"
	self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].
	
	self update.
	
	ToolBuilder default open: self