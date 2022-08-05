folderNames
testSortedChildren

	| subfolder1 subfolder2 subfolder3 subfolder4 subfolder5 subfolder6 subfolder7 |
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self helper endpoint of: #Generic.
	subfolder2 := ICFolder named: 'subfolder2' in: self root with: self helper endpoint of: #Generic.
	subfolder3 := ICFolder named: 'A' in: self root with: self helper endpoint of: #Generic.
	subfolder4 := ICFolder named: 'b' in: self root with: self helper endpoint of: #Generic.
	subfolder5 := ICFolder named: 'DDA' in: self root with: self helper endpoint of: #Generic.
	subfolder6 := ICFolder named: 'INBOX' in: self root with: self helper endpoint of: #Inbox.
	subfolder7 := ICFolder named: 'Gesendet' in: self root with: self helper endpoint of: #Sent.
	
	self
		assert: self root childFoldersSorted
		equals: (OrderedCollection newFrom: {subfolder6. subfolder7. subfolder3. subfolder4. subfolder5. subfolder1. subfolder2})