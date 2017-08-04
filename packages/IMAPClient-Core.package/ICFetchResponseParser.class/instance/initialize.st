initialization
initialize
	"States:
	1 : '*'
	2: '* '
	3: '* {uid}'
	4: '* {uid} '
	5: '* {uid} F'
	6: '* {uid} FE'
	7: '* {uid} FET'
	8: '* {uid} FETC'
	9: '* {uid} FETCH'
	10: '* {uid} FETCH '
      11: '* {uid} FETCH ( $header_content )'"
	self state: 1.
	self emails: OrderedCollection new.
	self reset