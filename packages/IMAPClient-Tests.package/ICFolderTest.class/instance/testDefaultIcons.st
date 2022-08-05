folderIcon
testDefaultIcons

	| subFolder defaultTypes |
	defaultTypes := {#Inbox. #Sent. #Junk. #Drafts. #Trash}.
	
	defaultTypes do: [:folderType |
		subFolder := ICFolder named: 'subfolders' in: self root with: self helper endpoint of: folderType.
		self assert: subFolder iconName ~= #none]