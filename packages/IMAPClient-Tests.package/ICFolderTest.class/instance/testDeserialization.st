folderIO
testDeserialization

	| subfolder |
	subfolder := ICFolder named: 'subfolder' in: self root with: self helper endPoint of: #Generic.
	subfolder setFrom: self givenJsonObject.
	
	self assert: subfolder folderType = #Inbox