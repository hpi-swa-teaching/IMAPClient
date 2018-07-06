get emails
getProgress
	| result |
	"every time this method is called, the number of headers to fetch will be reduced by one"
	result := (1 / (self numberOfFolders)) * (self numberOfFetchedFolders).
	self numberOfFetchedFolders: (self numberOfFetchedFolders +1).
	^result