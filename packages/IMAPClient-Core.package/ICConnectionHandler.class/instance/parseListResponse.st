as yet unclassified
parseListResponse
	
	self lastResponse do: [:each | self folderFromResponse: each]