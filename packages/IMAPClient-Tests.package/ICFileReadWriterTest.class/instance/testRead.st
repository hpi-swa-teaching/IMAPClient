readFile
testRead
	
	self createFileWith: self readUID.
	self readWriter readEmailsFromDisk.
	self assert: { (self class expectedMailObjectFor: self readUID) folder: self endpoint rootFolder } 
		equals: self endpoint rootFolder emails asArray