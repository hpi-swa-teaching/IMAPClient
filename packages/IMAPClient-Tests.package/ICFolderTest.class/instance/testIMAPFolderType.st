folderTypes
testIMAPFolderType

	|responseLine testEndpoint|
	
	responseLine := '* LIST (\Drafts \NoInferiors) "/" Entwurf'.
	testEndpoint := ICEndPoint new.
	testEndpoint folderFromResponse: responseLine.
	self assert: testEndpoint rootFolder childFolders first folderType equals: #Drafts.

	