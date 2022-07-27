testing
testDeleteEmailOffline

	self helper endpoint deleteEmail: self email.
	self assert: self email folder isTrashFolder