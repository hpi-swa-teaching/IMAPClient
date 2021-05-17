action - update emails
update

	"["
		self startUpdateProcess: self highestUniqueID.	
		self childFolders do: [:anICFolder | anICFolder update]"]
	on: ConnectionClosed 
	do: [:e | Transcript show: (e asString)]"