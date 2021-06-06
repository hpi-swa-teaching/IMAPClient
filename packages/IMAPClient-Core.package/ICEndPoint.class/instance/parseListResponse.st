as yet unclassified
parseListResponse
	
	self connectionHandler lastResponse do: [:each | self folderFromResponse: each]