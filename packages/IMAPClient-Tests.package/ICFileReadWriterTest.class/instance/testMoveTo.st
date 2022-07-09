testing
testMoveTo

	| mail  moveToFolder originFolder |
	
	moveToFolder:= self helper createAFolder: 'moveToFolder'.
	originFolder := self helper createAFolder: 'originFolder'.
	
	mail := self helper createAnEmail: originFolder.
	
	self assert: mail folder equals: originFolder.
	self assert: (originFolder emails contains: [:e| e = mail]).
	self readWriter moveEmail: mail to: moveToFolder.
	
	self assert: originFolder emails isEmpty.
	self assert: mail folder equals: moveToFolder.
	self assert: (moveToFolder emails contains: [:e| e = mail])