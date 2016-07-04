error handling
parseFetchHeaders

	| emails emailHeaderLines |
	emails := OrderedCollection new.
	emailHeaderLines := OrderedCollection new.
	self lastResponse do: [ :line |
		emailHeaderLines add: line.
		(line = self lastHeaderLine) ifTrue: [
			emails add: (self parseFetchHeader: emailHeaderLines).
			emailHeaderLines removeAll. ] ].
	^ emails