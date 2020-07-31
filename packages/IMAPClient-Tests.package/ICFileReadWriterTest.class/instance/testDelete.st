accessing
testDelete
	
	self createFileWith: self deleteUID.
	self assert: (FileDirectory default / self endpoint maildirFileName / self deleteUID asString) exists.
	self readWriter delete: (self class expectedMailObjectFor: self deleteUID).
	self assert: (FileDirectory default / self endpoint maildirFileName / self deleteUID asString) exists not.
	