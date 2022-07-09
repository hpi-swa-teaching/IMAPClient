testing
testRead

	| folder mail |
	
	folder := self helper createAFolder: 'folder'.
	mail := self helper createAnEmail: folder.
	folder emails: OrderedCollection new.

	self readWriter syncFromDisk.
	self assert: (folder emails contains: [:e | e id = mail id ]).
