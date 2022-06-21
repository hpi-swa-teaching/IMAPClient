accessing
rootDirectory

	^ (FileDirectory default directoryNamed: 'Maildir') directoryNamed: self endpoint rootDirectoryName