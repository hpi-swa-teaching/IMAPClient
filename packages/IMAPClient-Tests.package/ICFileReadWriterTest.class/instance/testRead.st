UIDs
testRead

	self createFileWith: self readUID.
	self readWriter readEmailsFromDisk.
	self
		assert: {self class expectedMailObjectFor: self readUID in: self endpoint rootFolder}
		equals: self endpoint rootFolder emails asArray