folderIcon
testDefaultIcons

	| subFolder defaultFolders|
	
	defaultFolders := {'INBOX'. 'Spam'. 'Entwurf'. 'Papierkorb'. 'Gesendet'}.
	
	defaultFolders do: [ :folderName | 
		subFolder := ICFolder named: folderName in: self root with: self endpoint.
		self assert: subFolder iconName ~= #none.
		]
