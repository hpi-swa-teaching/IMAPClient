accessing
createFileWith: UID

	| testMail |
	testMail := self class expectedMailObjectFor: UID in: self endpoint rootFolder.
	(FileDirectory default / (self endpoint maildirFileName: self endpoint rootFolder folderName)) assureExistence.
	FileStream
		forceNewFileNamed: (self endpoint maildirFileName: self endpoint rootFolder folderName), FileDirectory slash, testMail uniqueID
		do: [:stream |
			stream
				nextPutAll: testMail serializeToJson;
				flush;
				close].
			
	^ testMail