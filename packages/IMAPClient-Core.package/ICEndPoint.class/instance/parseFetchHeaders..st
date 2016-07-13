protocol parse
parseFetchHeaders: headerLines

	| emails emailHeaderLines |
	emails := OrderedCollection new.
	emailHeaderLines := OrderedCollection new.
	headerLines do: [ :line |
		emailHeaderLines add: line.
		(line = self lastHeaderLine) ifTrue: [
			emails add: (self parseFetchHeader: emailHeaderLines).
			emailHeaderLines removeAll ] ].
	^ emails