UIDs
testRead

	| folder mail |
	
	self readWriter: (ICFileReadWriter new endpoint: self helper endpoint)."remove this, should be in SetUP!"
	folder := self helper createAFolder: 'folder'.
	mail := self helper createAnEmail: folder.
	folder emails: OrderedCollection new.

	self readWriter syncFromDisk.
	self assert: (folder emails contains: [:e | e id = mail id ]).
