folderTypes
testIMAPFolderType

	| responseLine testEndPoint |
	responseLine := '* LIST (\Drafts \NoInferiors) "/" Entwurf'.
	testEndPoint := ICEndPoint new.
	testEndPoint folderFromResponse: responseLine.
	self assert: testEndPoint rootFolder childFolders first folderType equals: #Drafts