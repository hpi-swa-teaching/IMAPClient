connection
parseListResponse

	self connectionHandler lastResponse do: [:aLine | self folderFromResponse: aLine]