UIDs
testMoveTo

	| mail  moveToFolder originFolder |
	
	moveToFolder:= self helper createAnFolder: 'moveToFolder'.
	originFolder := self helper createAnFolder: 'originFolder'.
	
	mail := self helper createAnEmail: originFolder.
	"mail:= self createFileWith: self moveToUID."
	self assert: mail folder equals: originFolder.
	self assert: (originFolder emails contains: [:e| e = mail]).
	self halt.
	self readWriter moveEmail: mail to: moveToFolder.
	
	self assert: mail folder equals: moveToFolder.
	self assert: (moveToFolder emails contains: mail)