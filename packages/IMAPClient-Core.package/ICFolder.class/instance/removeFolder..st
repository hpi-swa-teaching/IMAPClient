action - remove emails
removeFolder: child

	^ self removeFolder: child ifAbsent: [Error signal: self class errorChildDoesNotExist]