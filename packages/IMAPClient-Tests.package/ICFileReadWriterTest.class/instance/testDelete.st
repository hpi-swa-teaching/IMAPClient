testing
testDelete

	| folder mail emailPath |
	folder := self helper createAFolder: 'folder'.
	mail := self helper createAnEmail: folder.
	emailPath := FileDirectory default / (self helper endPoint maildirFileName: folder folderName) / mail id asString.
	
	self assert: emailPath exists.
	
	self readWriter delete: mail.
	self assert: emailPath exists not