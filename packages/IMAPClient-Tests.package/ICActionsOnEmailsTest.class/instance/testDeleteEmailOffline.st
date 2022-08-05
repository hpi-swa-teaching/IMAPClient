testing
testDeleteEmailOffline

	self helper endPoint deleteEmail: self email.
	self assert: self email folder isTrashFolder