constants
trashFolder

	^ ICFolder new
		folderName: self trashFolderName;
		parent: self folder;
		endpoint: self endPoint