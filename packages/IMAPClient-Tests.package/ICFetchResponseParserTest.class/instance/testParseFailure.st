testing
testParseFailure
	
	
	
	self should: [ self parser parse: (ReadStream on: (self class noIDExampleResponse)) ] raise: Error description: 'Parsing Error in state parseID'.
	self should: [ self parser parse: (ReadStream on: (self class noCommandExampleResponse)) ] raise: Error description: 'Parsing Error in state parseFetchCommand'.
	self should: [ self parser parse: (ReadStream on: (self class malformedOctetExampleResponse)) ] raise: Error description: 'Parsing Error in state parseFetchContent'.
	