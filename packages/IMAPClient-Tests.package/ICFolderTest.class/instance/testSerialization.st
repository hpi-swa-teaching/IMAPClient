folderIO
testSerialization

	| subfolder |
	subfolder := ICFolder named: 'subfolder' in: self root with: self endpoint of: #Inbox.
	
	self assert: (Json readFrom: (ReadStream on: subfolder serializeToJson)) equals: self givenJsonObject