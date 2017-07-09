protocol parse
parseFetchHeaders: headerLines

	| parser folder|
	parser := (ICFetchResponseParser new) endpoint: self.
	
	headerLines do: [:x | x do: [:i | parser read: i]. parser read: (Character cr) ]. 
	
	folder := self rootFolder childFolderNamed: (self currentFolderName ). 
	parser emails do: [:mail | mail folder: folder; saveInMaildir ].
	
	"emailHeaderLines := OrderedCollection new.
	headerLines do: [ :line |
		emailHeaderLines add: line.
		(line = self class lastHeaderLine) ifTrue: [
			emails add: (self parseFetchHeader: emailHeaderLines).
			emailHeaderLines removeAll ] ]."
	
	^ parser emails.