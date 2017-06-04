protocol parse
parseFetchHeaders: headerLines

	| parser |
	parser := (ICFetchResponseParser new) endpoint: self.
	
	headerLines do: [:x | x do: [:i | parser read: i]. parser read: (Character cr) ]. 
	
	"emailHeaderLines := OrderedCollection new.
	headerLines do: [ :line |
		emailHeaderLines add: line.
		(line = self class lastHeaderLine) ifTrue: [
			emails add: (self parseFetchHeader: emailHeaderLines).
			emailHeaderLines removeAll ] ]."
	
	^ parser emails.