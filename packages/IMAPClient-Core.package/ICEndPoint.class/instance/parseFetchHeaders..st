protocol parse
parseFetchHeaders: headerLines

	| parser folder string index|
	
	parser := (ICFetchResponseParserRework new) endpoint: self.
		
	"quick fix: if 'content-Type' and boundaries are in seperated lines the
	 bytes the server told us, wont fit anymore :('"

	index := 1.
	string := ''.
	
	headerLines do: [:y |
	y do: [:i | string := string , i]. string := string , (Character cr)]. 
			
	headerLines do: [:x | 
		x do: [:i | parser read: i]. parser read: (Character cr)]. 
	
	

	folder := self rootFolder childFolderNamed: (self currentFolderName) with: hierarchyDelimiter. 
	parser emails do: [:mail | mail folder: folder; saveInMaildir].
	
	^ parser emails