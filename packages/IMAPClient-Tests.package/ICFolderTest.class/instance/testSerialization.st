folderIO
testSerialization

	| subfolder |
	subfolder := ICFolder named: 'subfolder' in: self root with: self helper endPoint of: #Inbox.
	subfolder id: self folderIOId.
	
	self assert: (Json readFrom: (ReadStream on: subfolder serializeToJson)) equals: self givenJsonObject