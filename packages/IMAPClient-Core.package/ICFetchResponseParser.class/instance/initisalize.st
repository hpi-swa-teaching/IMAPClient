as yet unclassified
initisalize
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
	current_uid := ''.
	current_mail := ''.