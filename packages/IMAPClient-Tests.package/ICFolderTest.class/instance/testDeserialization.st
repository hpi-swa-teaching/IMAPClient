folderIO
testDeserialization
	
	|subfolder|
	
	subfolder := ICFolder named: 'subfolder' in: self root with: self endpoint of: #Generic.
	subfolder setFrom:  self givenJsonObject.
	
	self assert: subfolder folderType = #Inbox