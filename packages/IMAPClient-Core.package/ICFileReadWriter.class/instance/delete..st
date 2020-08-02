delete file
delete: anICEmail

	(FileDirectory default / self endpoint maildirFileName) deleteFileNamed: anICEmail uniqueID ifAbsent: [^ self]