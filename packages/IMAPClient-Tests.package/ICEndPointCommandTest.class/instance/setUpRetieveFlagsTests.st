logout
setUpRetieveFlagsTests

	| folder mailA mailB emailObjects folderName |
	emailObjects := self endPoint maildirDiffFetchHeadersFrom: '3' to: '4'.
	mailA := emailObjects first.
	mailB := emailObjects second.
	folder := emailObjects first folder.
	folder addMails: emailObjects.
	
	folderName := self endPoint rootDirectoryName.
	self path: 'Maildir', FileDirectory slash, folderName, FileDirectory slash, 'inbox'.
	
	^{mailA. mailB}