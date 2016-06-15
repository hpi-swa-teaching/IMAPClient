message handling
fetchNextResponse

	"fetches all lines upTp next ProtocolEndPhrase. In case of an Protocol error an error rises."	
	| multiLineResponse |
	multiLineResponse := OrderedCollection new.
	[ (self stream nextResponse beginsWith: self class commandSucceeded) or: [ self checkForBadRequest ]] whileFalse: [ multiLineResponse add: self stream lastResponse ].

	self lastResponse: multiLineResponse 