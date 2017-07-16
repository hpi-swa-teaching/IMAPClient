as yet unclassified
initialize
	"
	States:
	1 : '*'
	2: '* '
	3: '* {uid}'
	4: '* {uid} '
	5: '* {uid} ('
	6: '* {uid} ({body}'
	"
	self state: 1.
	emails := OrderedCollection new.
	self reset.