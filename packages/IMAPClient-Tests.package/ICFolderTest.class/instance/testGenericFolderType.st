folderTypes
testGenericFolderType

	| responseLine testEndPoint |
	responseLine := '* LIST ( \NoInferiors) "/" Testordner1'.
	testEndPoint := ICEndPoint new.
	testEndPoint folderFromResponse: responseLine.
	self assert: testEndPoint rootFolder childFolders first folderType equals: #Generic