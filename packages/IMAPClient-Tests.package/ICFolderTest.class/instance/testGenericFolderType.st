folderTypes
testGenericFolderType

	| responseLine testEndpoint |
	responseLine := '* LIST ( \NoInferiors) "/" Testordner1'.
	testEndpoint := ICEndPoint new.
	testEndpoint folderFromResponse: responseLine.
	self assert: testEndpoint rootFolder childFolders first folderType equals: #Generic