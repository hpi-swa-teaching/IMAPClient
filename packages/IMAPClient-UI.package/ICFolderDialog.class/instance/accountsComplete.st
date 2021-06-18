accountManagement
accountsComplete

	self emailAccounts: (self initializedAccounts collect: [:anAccountInfo | 
		(ICEndPoint newWith: anAccountInfo) connectAndLogin]).
	
	"let all Endpoints preload their file structure and configure them to prevent timeouts"
	self emailAccounts do: [:endpoint |
		self folderWith: endpoint.
		endpoint preventTimeout].
	
	ICEndPoint eraseStoredPasswords.
	
	self update.
	
	ToolBuilder default open: self