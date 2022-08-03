testing
testParseSimpleFetch

	| parseResult firstResult parsedMail givenMail |
	parseResult := ICParser parseFetchMailStream: (ReadStream on: self class firstExampleResponse).
	
	firstResult := parseResult at: self class firstMessageID.
	self assert: parseResult size equals: self class expectedNumberOfMails.
	self assert: firstResult equals: self class firstExpectedResponse.
	
	parsedMail := ICParser
		parseFetchHeader: firstResult
		withId: (parseResult keyAtValue: firstResult).
	
	givenMail := self class firstExpectedMailObject.
	self assert: parsedMail from equals: givenMail from.
	self assert: parsedMail to equals: givenMail to.
	self assert: parsedMail subject equals: givenMail subject.
	self assert: parsedMail date equals: givenMail date.
	self assert: parsedMail uniqueID equals: givenMail uniqueID