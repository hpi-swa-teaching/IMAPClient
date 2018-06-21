protocol parse
parseFetchHeaders: headerLines
	| parser folder|
	
	parser := (ICFetchResponseParser new) endpoint: self.
	headerLines do: [:x | x do: [:i | parser read: i]. parser read: (Character cr) ]. 

	folder := self rootFolder childFolderNamed: (self currentFolderName) with: hierarchyDelimiter. 
	parser emails do: [:mail | mail folder: folder; saveInMaildir ].
	
	^ parser emails.