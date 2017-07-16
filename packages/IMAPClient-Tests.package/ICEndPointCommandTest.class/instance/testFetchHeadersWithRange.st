fetch
testFetchHeadersWithRange

	| emailObjects |
	emailObjects := self endPoint fetchHeadersFrom: 3 to: 4.
	self
		assert: emailObjects size equals: 2;
		assert: (emailObjects collect: [ :each | each header ]) equals: self class expectedFetchHeadersWithRange