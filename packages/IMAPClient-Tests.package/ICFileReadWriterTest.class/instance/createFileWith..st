accessing
createFileWith: UID

	| testMail |
	testMail := self class expectedMailObjectFor: UID.
	(FileDirectory default / self endpoint maildirFileName) assureExistence.
	FileStream
		forceNewFileNamed: self endpoint maildirFileName, FileDirectory slash, testMail uniqueID
		do: [:stream |
			stream
				nextPutAll: testMail serializeToJson;
				flush;
				close]