accessing
trashFolder

	^ ICFolder new
		folderName: 'trash';
		parent: self email folder;
		endpoint: self endPoint