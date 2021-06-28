move
isCommandStorageEmpty

	^ self storedCommands isEmptyFor: self accountInfo hash
