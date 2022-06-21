writeFile
testWrite

	self readWriter write: (self class expectedMailObjectFor: self writeUID in: self endpoint rootFolder).
	self
		assert: (self class givenJsonObjectFor: self writeUID)
		equals: (Json readFrom: (FileDirectory default / self endpoint maildirFileName / self writeUID) readStream)